##################################################
# author:bleach
# description:
#    1.编译当前文件夹下的所有源文件为可执行文件。
#    2.编译当前文件下的所有源文件，生成静/动态库。 
# time:2015/07/09
###################################################

##################################################
# makefile目标设置
#################################################
.PHONY: run  lib_s  lib_d  OBJ_PARA clean
#run 默认目标，生成可执行文件
#lib_s 生成静态库
#lib_d 生成动态库
#clean 清除文件  


#################################################
# 可执行文件名称，动态库，静态库名称设置
################################################
PROGRAM := main.elf
lib_static := libmy_static.a
lib_dynamic := libmy_dynamic.so

##################################################
# 路径设置
##################################################
SRCDIR := ./  #当前路径
HeaderDIR :=  ./include   #头文件路径

###################################################
# 编译器设置
##################################################
CC := gcc
CXX := g++            
CmpPara :=             #编译参数 
CFLAG :=1              #编译标志 
CFLAGS :=-g -lpthread  #编译标志 


#####################################################
# 获取源文件，目标文件名
####################################################
SRC := $(wildcard *.c)
OBJ := $(patsubst %.c, %.o, $(SRC))


#################################################
# 编译当前路径下源文件，生成对应的目标文件
#################################################
%.o:%.c
ifeq ($(strip $(CmpPara)),)    #如果没有设置编译参数，则不使用额外的参数生成目标文件
	gcc -c $< -o $@ -I $(HeaderDIR)
else
	gcc -c  $(CmpPara) $< -o $@ -I $(HeaderDIR)
endif 
	

##########################################
# 编译生成可执行文件 
##########################################
run:$(OBJ)
	$(CC) -o $(PROGRAM) $(OBJ) $(CFLAGS)    
	rm $(OBJ)
	@echo "create program success!"

############################################
# 生成动态库 
############################################
#lib_d: CmpPara += -fPIC
lib_d: $(SRC)
	$(CC) -shared -fPIC -o $(lib_dynamic)  $(SRC)
	@echo "lib_d success!"

#############################################
# 生成静态库
#############################################
lib_s:$(OBJ)
	ar  -r $(lib_static)  $(OBJ)  	
	@echo "lib_s success!"
	

#############################################
# 清除文件
###############################################
clean:
	rm *.o *.a *.d *.out $(PROGRAM) *.so *.a 
