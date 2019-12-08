MAIN_FILE=hyperv.p4
LOG="--log-console"
INTF1="-i 1@p4p1"
INTF2="-i 2@p4p2"

compile:
	@mkdir -p build
	@p4c-bmv2 src/${MAIN_FILE} --json build/hyperv.json
clean:
	@rm -rf build
run:
	simple_switch build/hyperv.json $(INTF1) $(INTF2) $(LOG)

