# $NetBSD: Makefile,v 1.4 2008/08/11 10:56:54 christos Exp $
# From: $FreeBSD: src/sbin/newfs_msdos/Makefile,v 1.5 2001/03/26 14:33:18 ru Exp $

.include <bsd.own.mk>

PROG=	newfs_msdos
MAN=	newfs_msdos.8
SRCS=	newfs_msdos.c partutil.c

LDADD+= -lutil
DPADD+= ${LIBUTIL}

FSCK=${NETBSDSRCDIR}/sbin/fsck
CPPFLAGS+=-I${.CURDIR} -I${FSCK}
.PATH:  ${FSCK}


.if ${MACHINE} == "pc98"
CFLAGS+= -DPC98
.endif

.include <bsd.prog.mk>
