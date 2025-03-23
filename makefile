#############################################
# ghc
TARGET = ./app/main

all: help
help:
	@echo "make all	默认"
	@echo "make compile	编译且链接"
	@echo "make run	运行"
	@echo "make runghc	解释"
	@echo "make help	帮助"
clean:
	@rm -rf ./app/*.o ./app/*.hi $(TARGET)
compile: clean  # .hs源文件(input file) .hi接口文件 .o目标文件 main可执行文件
	@ghc -Wall $(TARGET).hs
run: compile
	@$(TARGET)
runghc interpret:
	@runghc $(TARGET).hs

# ghc -c -O main.hs  # 编译成.o
# ghc -o main main.o  # link成可执行文件

# ghc -C Foo.hs  # 编译成.hc
# ghc -S main.hc  # 编译成汇编


#############################################
# cabal
cabal_build:
	@cabal build
cabal_run:
	@cabal run
