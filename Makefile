PREFIX	=/opt
BINDIR	=${PREFIX}/bin

all:	slab-calc

check:	slab-calc
	./slab-calc /proc/slabinfo

install: slab-calc
	install -d ${BINDIR}
	install -c slab-calc ${BINDIR}/

uninstall:
	${RM} ${BINDIR}/slab-calc
