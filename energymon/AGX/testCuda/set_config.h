#include <iostream>
#include <string>
#include <stdio.h>
#include <stdint.h>
#include <cstring>
#include <sstream>
#include <vector>
#include <fstream>
using namespace std;

//#define INA3221_DIR "/sys/bus/i2c/drivers/ina3221x"
#define LITTLE_CLUSTER_GOVERNOR "/sys/devices/system/cpu/cpufreq/policy0/scaling_governor"
#define BIG_CLUSTER_GOVERNOR "/sys/devices/system/cpu/cpufreq/policy1/scaling_governor"
#define LITTLE_CLUSTER_FREQ "/sys/devices/system/cpu/cpufreq/policy0/scaling_setspeed"
#define BIG_CLUSTER_FREQ "/sys/devices/system/cpu/cpufreq/policy1/scaling_setspeed"
#define GPU_GOVERNOR "/sys/devices/17000000.gp10b/devfreq/17000000.gp10b/governor"
#define GPU_FREQ "/sys/devices/17000000.gp10b/devfreq/17000000.gp10b/userspace/set_freq"
#define GPU_ONLINE "/sys/devices/gpu.0/force_idle"
#define CPU_ONLINE "/sys/devices/system/cpu/cpu%d/online"
#define EMC_FREQ "/sys/kernel/debug/bpmp/debug/clk/emc/rate"
#define EMC_MIN "/sys/kernel/debug/bpmp/debug/clk/emc/min_rate"
#define EMC_MAX "/sys/kernel/debug/bpmp/debug/clk/emc/max_rate"

int setBigClusterFreq(uint64_t freq){
	FILE * f_gov = fopen(BIG_CLUSTER_GOVERNOR, "r");
	if(f_gov == NULL){
		cerr << "File open failure"  << endl;
		return -1;
	}
	char buffer[128];
	fgets(buffer, 128, f_gov);
	// The last char is '\n', should switch it to '\0'
	buffer[strlen(buffer)-1]='\0';
	cout << buffer << endl;
	char mode [] = "userspace";
	if(strcmp(buffer, mode)!=0){
		cout << "Need privilege to change BIG governor!"  << endl;
		fclose(f_gov);
		return -1;
	}
	FILE* f_freq = fopen(BIG_CLUSTER_FREQ,"w");
	if(f_freq == NULL){
		cerr << "File open failure"  << endl;
		return -1;
	}
	const char* tmp = to_string(freq).c_str();
	fputs(tmp, f_freq);
	fclose(f_gov);
	fclose(f_freq);
	return 0;
}
int setLittleClusterFreq(uint64_t freq){
	FILE * f_gov = fopen(LITTLE_CLUSTER_GOVERNOR, "r");
	if(f_gov == NULL){
		cerr << "File open failure"  << endl;
		return -1;
	}
	char buffer[128];
	fgets(buffer, 128, f_gov);
	// The last char is '\n', should switch it to '\0'
	buffer[strlen(buffer)-1]='\0';
	cout << buffer << endl;
	char mode [] = "userspace";
	if(strcmp(buffer, mode)!=0){
		cout << "Need privilege to change LITTLE governor!"  << endl;
		fclose(f_gov);
		return -1;
	}
	FILE* f_freq = fopen(LITTLE_CLUSTER_FREQ,"w");
	if(f_freq == NULL){
		cerr << "File open failure"  << endl;
		return -1;
	}
	const char* tmp = to_string(freq).c_str();
	fputs(tmp, f_freq);
	fclose(f_gov);
	fclose(f_freq);
	return 0;
}
int setCoreOnline(int core, int flag){
	char coreFile[256];
	sprintf(coreFile,CPU_ONLINE, core);
	FILE* f_core = fopen(coreFile,"w");
	if(f_core == NULL){
		cerr << "File open failure"  << endl;
		return -1;
	}
	const char* tmp = to_string(flag).c_str();
	fputs(tmp, f_core);
	return 0;
}
int setAllCoresOnline(int flags[], int len){
	// core 1-5
	
	for(int i =0;i<len;i++){
		char coreFile[256];
		sprintf(coreFile, CPU_ONLINE, i+1);
		FILE* f_core = fopen(coreFile, "w");
		if(f_core == NULL){
			cerr << "File open failure"  << endl;
			return -1;
		}
		const char* tmp = to_string(flags[i]).c_str();
		fputs(tmp, f_core);
		fclose(f_core);
	}
	return 0;
}
int setGpuFreq(uint64_t gFreq){
	cout << "GPU freq: " << gFreq <<  endl;
	FILE* f_idle = fopen(GPU_ONLINE, "rw");
	if(gFreq == 0){
		fputs("1", f_idle);
		fclose(f_idle);
		return 0;	
	}
	// if not 0, shouldn't be force_idle
	fputs("0", f_idle);	
	fclose(f_idle);

	FILE * f_gov = fopen(GPU_GOVERNOR, "rw");
	if(f_gov == NULL){
		cerr << "File open failure"  << endl;
		return -1;
	}
	char buffer[128];
	fgets(buffer, 128, f_gov);
	buffer[strlen(buffer)-1]='\0';
	cout << buffer << endl;
	char mode [] = "userspace";
	if(strcmp(buffer, mode)!=0){
		//if(fputs(mode, f_gov)<0){
			cout << "Need privilege to change GPU governor!"  << endl;
			fclose(f_gov);
			return -1;
		//}
	}
	FILE* f_freq = fopen(GPU_FREQ,"w");
	if(f_freq == NULL){
		cerr << "File open failure"  << endl;
		return -1;
	}
	const char* tmp = to_string(gFreq).c_str();
	cout << "GPU freq: " << tmp <<  endl;
	fputs(tmp, f_freq);
	fclose(f_gov);
	fclose(f_freq);
	return 0;
}
int setEmcFreq(uint64_t emcFreq){
	FILE* f_freq = fopen(EMC_FREQ,"w");
	if(f_freq == NULL){
		cerr << "File open failure"  << endl;
		return -1;
	}
	const char* tmp = to_string(emcFreq).c_str();
	cout << "EMC freq: " << tmp <<  endl;
	fputs(tmp, f_freq);
	fclose(f_freq);

	FILE* f_min = fopen(EMC_MIN,"w");
	if(f_min == NULL){
		cerr << "File open failure"  << endl;
		return -1;
	}
	fputs(tmp, f_min);
	fclose(f_min);

	FILE* f_max = fopen(EMC_MAX,"w");
	if(f_min == NULL){
		cerr << "File open failure"  << endl;
		return -1;
	}
	fputs(tmp, f_max);
	fclose(f_max);

	return 0;
}
int setConfig(string strConfig){
	stringstream stream(strConfig);
	vector<uint64_t> freq;
	uint64_t n;
	while(stream >> n){
		freq.push_back(n);
	}
	int bigFreq = freq[1];
	int littleFreq = freq[6];
	int gpuFreq = freq[9];
	int core[5]={(int)freq[7],(int)freq[8], (int)freq[3], (int)freq[4], (int)freq[5]};
	int emcFreq = freq[10];
	setBigClusterFreq(bigFreq);
	setLittleClusterFreq(littleFreq);
	setAllCoresOnline(core, 5);
	setGpuFreq(gpuFreq);
	setEmcFreq(emcFreq);
	return 0;
}

//int main(int argc, char* argv[]){
//	ifstream infile("set-config.config");
//	string line;
//	// Only the first line is used to set the config
//	if(getline(infile, line)){
//		setConfig(line);
//	}
//
//	if(argc > 1){
//		if(getline(infile, line)){
//			setConfig(line);
//		}
//	}
//	cout << "[set] " << line << endl;
//
//
//	return 0;
//}
