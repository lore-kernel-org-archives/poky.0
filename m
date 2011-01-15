Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9C9074C81003
	for <poky@yoctoproject.org>; Sat, 15 Jan 2011 05:28:54 -0600 (CST)
Received: by wye20 with SMTP id 20so3749593wye.35
	for <poky@yoctoproject.org>; Sat, 15 Jan 2011 03:28:53 -0800 (PST)
Received: by 10.227.151.193 with SMTP id d1mr1818076wbw.201.1295090930261;
	Sat, 15 Jan 2011 03:28:50 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id
	m13sm1640406wbz.15.2011.01.15.03.28.48
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Sat, 15 Jan 2011 03:28:49 -0800 (PST)
From: Koen Kooi <koen@dominion.thruhere.net>
Date: Sat, 15 Jan 2011 12:28:48 +0100
Message-Id: <2A247D8C-AF9B-480F-992E-3933590D2824@dominion.thruhere.net>
To: poky@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v1082)
X-Mailer: Apple Mail (2.1082)
Subject: Parsing fails when a recipe is using distutils.bbclass
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 15 Jan 2011 11:28:55 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

I'm trying to build gnuradio using the meta-openembedded overlay which =
is causing me some problems with python-cheeta. When I have built =
python(-native), everything is fine, but on a build from scratch =
(hitting the pseudo redirect):

koen@dominion:/OE/tentacle$ MACHINE=3Dbeagleboard ./oebb.sh bitbake foo
Executing: MACHINE=3Dbeagleboard bitbake foo
Pseudo has not been built, building this first before the main build
ERROR: Error evaluating '${@python_dir(d)}'                              =
                                              | ETA:  00:00:35
Traceback (most recent call last):
  File "/OE/tentacle/sources/bitbake/lib/bb/data_smart.py", line 117, in =
expandWithRefs
    s =3D __expand_python_regexp__.sub(varparse.python_sub, s)
  File "/OE/tentacle/sources/bitbake/lib/bb/data_smart.py", line 76, in =
python_sub
    value =3D utils.better_eval(codeobj, DataContext(self.d))
  File "/OE/tentacle/sources/bitbake/lib/bb/utils.py", line 387, in =
better_eval
    return eval(source, _context, locals)
  File "PYTHON_DIR", line 1, in <module>
  File "python-dir.bbclass", line 7, in python_dir
Exception: No Python in STAGING_INCDIR. Forgot to build python-native?

ERROR: Error evaluating '${libdir}/${PYTHON_DIR}/site-packages'
Traceback (most recent call last):
  File "/OE/tentacle/sources/bitbake/lib/bb/data_smart.py", line 116, in =
expandWithRefs
    s =3D __expand_var_regexp__.sub(varparse.var_sub, s)
  File "/OE/tentacle/sources/bitbake/lib/bb/data_smart.py", line 60, in =
var_sub
    var =3D self.d.getVar(key, 1)
  File "/OE/tentacle/sources/bitbake/lib/bb/data_smart.py", line 260, in =
getVar
    return self.expand(value, var)
  File "/OE/tentacle/sources/bitbake/lib/bb/data_smart.py", line 132, in =
expand
    return self.expandWithRefs(s, varname).value
  File "/OE/tentacle/sources/bitbake/lib/bb/data_smart.py", line 117, in =
expandWithRefs
    s =3D __expand_python_regexp__.sub(varparse.python_sub, s)
  File "/OE/tentacle/sources/bitbake/lib/bb/data_smart.py", line 76, in =
python_sub
    value =3D utils.better_eval(codeobj, DataContext(self.d))
  File "/OE/tentacle/sources/bitbake/lib/bb/utils.py", line 387, in =
better_eval
    return eval(source, _context, locals)
  File "PYTHON_DIR", line 1, in <module>
  File "python-dir.bbclass", line 7, in python_dir
Exception: No Python in STAGING_INCDIR. Forgot to build python-native?

ERROR: Error evaluating '        install -d =
${D}${PYTHON_SITEPACKAGES_DIR}
        STAGING_INCDIR=3D${STAGING_INCDIR} \
        STAGING_LIBDIR=3D${STAGING_LIBDIR} \
        PYTHONPATH=3D${D}/${PYTHON_SITEPACKAGES_DIR} \
        BUILD_SYS=3D${BUILD_SYS} HOST_SYS=3D${HOST_SYS} \
        ${STAGING_BINDIR_NATIVE}/python setup.py install =
${DISTUTILS_INSTALL_ARGS} || \
        oefatal "python setup.py install execution failed."

        for i in `find ${D} -name "*.py"` ; do \
            sed -i -e s:${D}::g $i
        done

        if test -e ${D}${bindir} ; then
            for i in ${D}${bindir}/* ; do \
                sed -i -e s:${STAGING_BINDIR_NATIVE}:${bindir}:g $i
            done
        fi

        if test -e ${D}${sbindir}; then
            for i in ${D}${sbindir}/* ; do \
                sed -i -e s:${STAGING_BINDIR_NATIVE}:${bindir}:g $i
            done
        fi

        rm -f ${D}${PYTHON_SITEPACKAGES_DIR}/easy-install.pth

        #
        # FIXME: Bandaid against wrong datadir computation
        #
        if test -e ${D}${datadir}/share; then
            mv -f ${D}${datadir}/share/* ${D}${datadir}/
        fi

        # These are generated files, on really slow systems the =
storage/speed trade off
        # might be worth it, but in general it isn't
        find ${D}${libdir}/${PYTHON_DIR}/site-packages -iname '*.pyo' =
-exec rm {} \;
'
Traceback (most recent call last):
  File "/OE/tentacle/sources/bitbake/lib/bb/data_smart.py", line 116, in =
expandWithRefs
    s =3D __expand_var_regexp__.sub(varparse.var_sub, s)
  File "/OE/tentacle/sources/bitbake/lib/bb/data_smart.py", line 60, in =
var_sub
    var =3D self.d.getVar(key, 1)
  File "/OE/tentacle/sources/bitbake/lib/bb/data_smart.py", line 260, in =
getVar
    return self.expand(value, var)
  File "/OE/tentacle/sources/bitbake/lib/bb/data_smart.py", line 132, in =
expand
    return self.expandWithRefs(s, varname).value
  File "/OE/tentacle/sources/bitbake/lib/bb/data_smart.py", line 116, in =
expandWithRefs
    s =3D __expand_var_regexp__.sub(varparse.var_sub, s)
  File "/OE/tentacle/sources/bitbake/lib/bb/data_smart.py", line 60, in =
var_sub
    var =3D self.d.getVar(key, 1)
  File "/OE/tentacle/sources/bitbake/lib/bb/data_smart.py", line 260, in =
getVar
    return self.expand(value, var)
  File "/OE/tentacle/sources/bitbake/lib/bb/data_smart.py", line 132, in =
expand
    return self.expandWithRefs(s, varname).value
  File "/OE/tentacle/sources/bitbake/lib/bb/data_smart.py", line 117, in =
expandWithRefs
    s =3D __expand_python_regexp__.sub(varparse.python_sub, s)
  File "/OE/tentacle/sources/bitbake/lib/bb/data_smart.py", line 76, in =
python_sub
    value =3D utils.better_eval(codeobj, DataContext(self.d))
  File "/OE/tentacle/sources/bitbake/lib/bb/utils.py", line 387, in =
better_eval
    return eval(source, _context, locals)
  File "PYTHON_DIR", line 1, in <module>
  File "python-dir.bbclass", line 7, in python_dir
Exception: No Python in STAGING_INCDIR. Forgot to build python-native?

NOTE: Error expanding variable distutils_do_install
ERROR: Error parsing =
/OE/tentacle/sources/layers/meta-openembedded/recipes-devtools/python/pyth=
on-cheetah_2.4.4.bb: No Python in STAGING_INCDIR. Forgot to build =
python-native?
ERROR: Command execution failed: Exited with 1
koen@dominion:/OE/tentacle$=20

This is after syncing the needed classes with OE: =
http://dominion.thruhere.net/git/cgit.cgi/yocto/log/?h=3Dkoen but I get =
a similar error when using an unpatched tree.

The cheetah recipe looks like this: =
http://dominion.thruhere.net/git/cgit.cgi/openembedded/tree/recipes/python=
/python-cheetah_2.4.4.bb?h=3Dorg.openembedded.dev

Does anyone have a clue why the yocto bitbake is trying to expand =
PYTHONDIR during parsing?

regards,

Koen=

