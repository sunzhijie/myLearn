
WORKDIR = %cd%

CC = gcc.exe
CXX = g++.exe
AR = ar.exe
LD = g++.exe
WINDRES = windres.exe

INC = 
CFLAGS = -Wall -fexceptions
RESINC = 
LIBDIR = 
LIB = 
LDFLAGS = 

INC_DEBUG = $(INC) -Iinclude
CFLAGS_DEBUG = $(CFLAGS) -g
RESINC_DEBUG = $(RESINC)
RCFLAGS_DEBUG = $(RCFLAGS)
LIBDIR_DEBUG = $(LIBDIR)
LIB_DEBUG = $(LIB)
LDFLAGS_DEBUG = $(LDFLAGS)
OBJDIR_DEBUG = obj\\Debug
DEP_DEBUG = 
OUT_DEBUG = bin\\Debug\\MLL.exe

INC_RELEASE = $(INC)
CFLAGS_RELEASE = $(CFLAGS) -O2
RESINC_RELEASE = $(RESINC)
RCFLAGS_RELEASE = $(RCFLAGS)
LIBDIR_RELEASE = $(LIBDIR)
LIB_RELEASE = $(LIB)
LDFLAGS_RELEASE = $(LDFLAGS) -s
OBJDIR_RELEASE = obj\\Release
DEP_RELEASE = 
OUT_RELEASE = bin\\Release\\MLL.exe

OBJ_DEBUG = $(OBJDIR_DEBUG)\\kMeans.o $(OBJDIR_DEBUG)\\main.o $(OBJDIR_DEBUG)\\Adaboost.o $(OBJDIR_DEBUG)\\Bayes.o $(OBJDIR_DEBUG)\\CART.o $(OBJDIR_DEBUG)\\CRF-CWS.o $(OBJDIR_DEBUG)\\DNN.o $(OBJDIR_DEBUG)\\DTree.o $(OBJDIR_DEBUG)\\GMM.o $(OBJDIR_DEBUG)\\HMM-CWS.o $(OBJDIR_DEBUG)\\HMM.o $(OBJDIR_DEBUG)\\Hash.o $(OBJDIR_DEBUG)\\KNN.o $(OBJDIR_DEBUG)\\LineReg.o $(OBJDIR_DEBUG)\\LoadData.o $(OBJDIR_DEBUG)\\LogReg.o $(OBJDIR_DEBUG)\\MDP.o $(OBJDIR_DEBUG)\\ME.o $(OBJDIR_DEBUG)\\MEMM-CWS.o $(OBJDIR_DEBUG)\\Matrix.o $(OBJDIR_DEBUG)\\MatrixOpe.o $(OBJDIR_DEBUG)\\PCA.o $(OBJDIR_DEBUG)\\RF.o $(OBJDIR_DEBUG)\\SVD.o $(OBJDIR_DEBUG)\\SVM.o $(OBJDIR_DEBUG)\\SoftMaxReg.o

OBJ_RELEASE = $(OBJDIR_RELEASE)\\kMeans.o $(OBJDIR_RELEASE)\\main.o $(OBJDIR_RELEASE)\\Adaboost.o $(OBJDIR_RELEASE)\\Bayes.o $(OBJDIR_RELEASE)\\CART.o $(OBJDIR_RELEASE)\\CRF-CWS.o $(OBJDIR_RELEASE)\\DNN.o $(OBJDIR_RELEASE)\\DTree.o $(OBJDIR_RELEASE)\\GMM.o $(OBJDIR_RELEASE)\\HMM-CWS.o $(OBJDIR_RELEASE)\\HMM.o $(OBJDIR_RELEASE)\\Hash.o $(OBJDIR_RELEASE)\\KNN.o $(OBJDIR_RELEASE)\\LineReg.o $(OBJDIR_RELEASE)\\LoadData.o $(OBJDIR_RELEASE)\\LogReg.o $(OBJDIR_RELEASE)\\MDP.o $(OBJDIR_RELEASE)\\ME.o $(OBJDIR_RELEASE)\\MEMM-CWS.o $(OBJDIR_RELEASE)\\Matrix.o $(OBJDIR_RELEASE)\\MatrixOpe.o $(OBJDIR_RELEASE)\\PCA.o $(OBJDIR_RELEASE)\\RF.o $(OBJDIR_RELEASE)\\SVD.o $(OBJDIR_RELEASE)\\SVM.o $(OBJDIR_RELEASE)\\SoftMaxReg.o

all: debug release

clean: clean_debug clean_release

before_debug: 
	cmd /c if not exist bin\\Debug md bin\\Debug
	cmd /c if not exist $(OBJDIR_DEBUG) md $(OBJDIR_DEBUG)

after_debug: 

debug: before_debug out_debug after_debug

out_debug: before_debug $(OBJ_DEBUG) $(DEP_DEBUG)
	$(LD) $(LIBDIR_DEBUG) -o $(OUT_DEBUG) $(OBJ_DEBUG)  $(LDFLAGS_DEBUG) $(LIB_DEBUG)

$(OBJDIR_DEBUG)\\kMeans.o: kMeans.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c kMeans.cpp -o $(OBJDIR_DEBUG)\\kMeans.o

$(OBJDIR_DEBUG)\\main.o: main.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c main.cpp -o $(OBJDIR_DEBUG)\\main.o

$(OBJDIR_DEBUG)\\Adaboost.o: Adaboost.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c Adaboost.cpp -o $(OBJDIR_DEBUG)\\Adaboost.o

$(OBJDIR_DEBUG)\\Bayes.o: Bayes.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c Bayes.cpp -o $(OBJDIR_DEBUG)\\Bayes.o

$(OBJDIR_DEBUG)\\CART.o: CART.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c CART.cpp -o $(OBJDIR_DEBUG)\\CART.o

$(OBJDIR_DEBUG)\\CRF-CWS.o: CRF-CWS.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c CRF-CWS.cpp -o $(OBJDIR_DEBUG)\\CRF-CWS.o

$(OBJDIR_DEBUG)\\DNN.o: DNN.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c DNN.cpp -o $(OBJDIR_DEBUG)\\DNN.o

$(OBJDIR_DEBUG)\\DTree.o: DTree.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c DTree.cpp -o $(OBJDIR_DEBUG)\\DTree.o

$(OBJDIR_DEBUG)\\GMM.o: GMM.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c GMM.cpp -o $(OBJDIR_DEBUG)\\GMM.o

$(OBJDIR_DEBUG)\\HMM-CWS.o: HMM-CWS.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c HMM-CWS.cpp -o $(OBJDIR_DEBUG)\\HMM-CWS.o

$(OBJDIR_DEBUG)\\HMM.o: HMM.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c HMM.cpp -o $(OBJDIR_DEBUG)\\HMM.o

$(OBJDIR_DEBUG)\\Hash.o: Hash.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c Hash.cpp -o $(OBJDIR_DEBUG)\\Hash.o

$(OBJDIR_DEBUG)\\KNN.o: KNN.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c KNN.cpp -o $(OBJDIR_DEBUG)\\KNN.o

$(OBJDIR_DEBUG)\\LineReg.o: LineReg.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c LineReg.cpp -o $(OBJDIR_DEBUG)\\LineReg.o

$(OBJDIR_DEBUG)\\LoadData.o: LoadData.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c LoadData.cpp -o $(OBJDIR_DEBUG)\\LoadData.o

$(OBJDIR_DEBUG)\\LogReg.o: LogReg.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c LogReg.cpp -o $(OBJDIR_DEBUG)\\LogReg.o

$(OBJDIR_DEBUG)\\MDP.o: MDP.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c MDP.cpp -o $(OBJDIR_DEBUG)\\MDP.o

$(OBJDIR_DEBUG)\\ME.o: ME.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c ME.cpp -o $(OBJDIR_DEBUG)\\ME.o

$(OBJDIR_DEBUG)\\MEMM-CWS.o: MEMM-CWS.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c MEMM-CWS.cpp -o $(OBJDIR_DEBUG)\\MEMM-CWS.o

$(OBJDIR_DEBUG)\\Matrix.o: Matrix.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c Matrix.cpp -o $(OBJDIR_DEBUG)\\Matrix.o

$(OBJDIR_DEBUG)\\MatrixOpe.o: MatrixOpe.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c MatrixOpe.cpp -o $(OBJDIR_DEBUG)\\MatrixOpe.o

$(OBJDIR_DEBUG)\\PCA.o: PCA.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c PCA.cpp -o $(OBJDIR_DEBUG)\\PCA.o

$(OBJDIR_DEBUG)\\RF.o: RF.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c RF.cpp -o $(OBJDIR_DEBUG)\\RF.o

$(OBJDIR_DEBUG)\\SVD.o: SVD.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c SVD.cpp -o $(OBJDIR_DEBUG)\\SVD.o

$(OBJDIR_DEBUG)\\SVM.o: SVM.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c SVM.cpp -o $(OBJDIR_DEBUG)\\SVM.o

$(OBJDIR_DEBUG)\\SoftMaxReg.o: SoftMaxReg.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c SoftMaxReg.cpp -o $(OBJDIR_DEBUG)\\SoftMaxReg.o

clean_debug: 
	cmd /c del /f $(OBJ_DEBUG) $(OUT_DEBUG)
	cmd /c rd bin\\Debug
	cmd /c rd $(OBJDIR_DEBUG)

before_release: 
	cmd /c if not exist bin\\Release md bin\\Release
	cmd /c if not exist $(OBJDIR_RELEASE) md $(OBJDIR_RELEASE)

after_release: 

release: before_release out_release after_release

out_release: before_release $(OBJ_RELEASE) $(DEP_RELEASE)
	$(LD) $(LIBDIR_RELEASE) -o $(OUT_RELEASE) $(OBJ_RELEASE)  $(LDFLAGS_RELEASE) $(LIB_RELEASE)

$(OBJDIR_RELEASE)\\kMeans.o: kMeans.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c kMeans.cpp -o $(OBJDIR_RELEASE)\\kMeans.o

$(OBJDIR_RELEASE)\\main.o: main.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c main.cpp -o $(OBJDIR_RELEASE)\\main.o

$(OBJDIR_RELEASE)\\Adaboost.o: Adaboost.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c Adaboost.cpp -o $(OBJDIR_RELEASE)\\Adaboost.o

$(OBJDIR_RELEASE)\\Bayes.o: Bayes.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c Bayes.cpp -o $(OBJDIR_RELEASE)\\Bayes.o

$(OBJDIR_RELEASE)\\CART.o: CART.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c CART.cpp -o $(OBJDIR_RELEASE)\\CART.o

$(OBJDIR_RELEASE)\\CRF-CWS.o: CRF-CWS.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c CRF-CWS.cpp -o $(OBJDIR_RELEASE)\\CRF-CWS.o

$(OBJDIR_RELEASE)\\DNN.o: DNN.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c DNN.cpp -o $(OBJDIR_RELEASE)\\DNN.o

$(OBJDIR_RELEASE)\\DTree.o: DTree.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c DTree.cpp -o $(OBJDIR_RELEASE)\\DTree.o

$(OBJDIR_RELEASE)\\GMM.o: GMM.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c GMM.cpp -o $(OBJDIR_RELEASE)\\GMM.o

$(OBJDIR_RELEASE)\\HMM-CWS.o: HMM-CWS.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c HMM-CWS.cpp -o $(OBJDIR_RELEASE)\\HMM-CWS.o

$(OBJDIR_RELEASE)\\HMM.o: HMM.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c HMM.cpp -o $(OBJDIR_RELEASE)\\HMM.o

$(OBJDIR_RELEASE)\\Hash.o: Hash.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c Hash.cpp -o $(OBJDIR_RELEASE)\\Hash.o

$(OBJDIR_RELEASE)\\KNN.o: KNN.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c KNN.cpp -o $(OBJDIR_RELEASE)\\KNN.o

$(OBJDIR_RELEASE)\\LineReg.o: LineReg.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c LineReg.cpp -o $(OBJDIR_RELEASE)\\LineReg.o

$(OBJDIR_RELEASE)\\LoadData.o: LoadData.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c LoadData.cpp -o $(OBJDIR_RELEASE)\\LoadData.o

$(OBJDIR_RELEASE)\\LogReg.o: LogReg.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c LogReg.cpp -o $(OBJDIR_RELEASE)\\LogReg.o

$(OBJDIR_RELEASE)\\MDP.o: MDP.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c MDP.cpp -o $(OBJDIR_RELEASE)\\MDP.o

$(OBJDIR_RELEASE)\\ME.o: ME.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c ME.cpp -o $(OBJDIR_RELEASE)\\ME.o

$(OBJDIR_RELEASE)\\MEMM-CWS.o: MEMM-CWS.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c MEMM-CWS.cpp -o $(OBJDIR_RELEASE)\\MEMM-CWS.o

$(OBJDIR_RELEASE)\\Matrix.o: Matrix.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c Matrix.cpp -o $(OBJDIR_RELEASE)\\Matrix.o

$(OBJDIR_RELEASE)\\MatrixOpe.o: MatrixOpe.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c MatrixOpe.cpp -o $(OBJDIR_RELEASE)\\MatrixOpe.o

$(OBJDIR_RELEASE)\\PCA.o: PCA.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c PCA.cpp -o $(OBJDIR_RELEASE)\\PCA.o

$(OBJDIR_RELEASE)\\RF.o: RF.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c RF.cpp -o $(OBJDIR_RELEASE)\\RF.o

$(OBJDIR_RELEASE)\\SVD.o: SVD.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c SVD.cpp -o $(OBJDIR_RELEASE)\\SVD.o

$(OBJDIR_RELEASE)\\SVM.o: SVM.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c SVM.cpp -o $(OBJDIR_RELEASE)\\SVM.o

$(OBJDIR_RELEASE)\\SoftMaxReg.o: SoftMaxReg.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c SoftMaxReg.cpp -o $(OBJDIR_RELEASE)\\SoftMaxReg.o

clean_release: 
	cmd /c del /f $(OBJ_RELEASE) $(OUT_RELEASE)
	cmd /c rd bin\\Release
	cmd /c rd $(OBJDIR_RELEASE)

.PHONY: before_debug after_debug clean_debug before_release after_release clean_release
