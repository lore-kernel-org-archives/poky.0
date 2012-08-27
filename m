Return-Path: <martin.jansa@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E7B6E0049B
	for <poky@yoctoproject.org>; Mon, 27 Aug 2012 09:22:07 -0700 (PDT)
Received: by bkty5 with SMTP id y5so1389036bkt.35
	for <poky@yoctoproject.org>; Mon, 27 Aug 2012 09:22:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=AtRNex0ibxLHR/GXGowntTV1C4FEtOIo0NEsftXuZlw=;
	b=sNH255HxEl6Nxi4kpVIStD9CWzXGGx8UDj3kBmv4+GcoyHi/1YCgLT5+HkZrJwBDvo
	UYL3a6uzdSFLpOaGaDZ7GXsiWgLPjR5w7ed4Dgenl2p13esuty+E9rvbwuHX1/lntvnM
	9HOMMu58uK+moong42XEP81QlC5RL0D5CLtlqJgz3erPuiVtvOTonaZl47tPb60gi2yU
	SUQz/yIl5qo+Zmnl7z1uZ8J9ni7ACOFTAjy7eN3tv31Dy5kCj5oaazD9JRvYVPAJw+ot
	OQ9VQQStst26k1X+zJ2zULobSRP83xtEgodt9jWNStcRisq4CtvzTQrkXF5TQlfRlv7I
	pypA==
Received: by 10.204.129.208 with SMTP id p16mr3957601bks.129.1346084523543;
	Mon, 27 Aug 2012 09:22:03 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id y20sm11003439bkv.11.2012.08.27.09.22.01
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 27 Aug 2012 09:22:02 -0700 (PDT)
Date: Mon, 27 Aug 2012 18:22:14 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20120827162214.GB3438@jama.jama.net>
References: <503B76C0.30307@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <503B76C0.30307@mlbassoc.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Problems building webkit-gtk
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 27 Aug 2012 16:22:07 -0000
X-Groupsio-MsgNum: 8209
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="V0207lvV8h4k8FAm"
Content-Disposition: inline

--V0207lvV8h4k8FAm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 27, 2012 at 07:31:44AM -0600, Gary Thomas wrote:
> It seems that this commit may have been overzealous:

http://lists.linuxtogo.org/pipermail/openembedded-core/2012-August/027505.h=
tml
http://lists.linuxtogo.org/pipermail/openembedded-core/2012-August/027887.h=
tml
http://lists.linuxtogo.org/pipermail/openembedded-core/2012-August/027886.h=
tml
http://lists.linuxtogo.org/pipermail/openembedded-core/2012-August/028036.h=
tml

>=20
> commit e4c43e2f186b86d00fd285dff1b2dedc60c01172
> Author: Ross Burton <ross.burton@intel.com>
> Date:   Tue Jul 17 19:44:19 2012 +0100
>=20
>      webkit-gtk: remove no-parallel bodge
>=20
>      This workaround was originally for GNU Make 3.82 which upstream was =
blaming
>      for a parallel build failure.  Since then I've changed numerous vari=
ables
>      and now parallel builds are working with 3.82 (and succeed in 20 min=
utes
>      instead of 2 hours).
>=20
>      Revert the change until we've more data about what causes the breaka=
ge, then
>      we can bring it back with more finesse.
>=20
>      (From OE-Core rev: 90ca88a6f9dd5e2bc055739f84cb224f9a82455a)
>=20
>      Signed-off-by: Ross Burton <ross.burton@intel.com>
>      Signed-off-by: Saul Wold <sgw@linux.intel.com>
>      Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>=20
> Building on my 4-way box (Core-2 duo) fails with this error:
> | arm-amltd-linux-gnueabi-libtool: link: cannot find the library `libjava=
scriptcoregtk-1.0.la' or unhandled argument `libjavascriptcoregtk-1.0.la'
> | make[1]: *** [Programs/unittests/testdomdocument] Error 1
> | make[1]: *** Waiting for unfinished jobs....
> | arm-amltd-linux-gnueabi-libtool: link: cannot find the library `libjava=
scriptcoregtk-1.0.la' or unhandled argument `libjavascriptcoregtk-1.0.la'
> | make[1]: *** [Programs/unittests/testdomdomwindow] Error 1
> | In file included from ./Source/JavaScriptCore/assembler/MacroAssembler.=
h:36:0,
> |                  from ./Source/JavaScriptCore/jit/JITWriteBarrier.h:31,
> |                  from ./Source/JavaScriptCore/bytecode/CallLinkInfo.h:3=
0,
> |                  from ./Source/JavaScriptCore/bytecode/CodeBlock.h:33,
> |                  from ./Source/JavaScriptCore/bytecompiler/BytecodeGene=
rator.h:34,
> |                  from Source/JavaScriptCore/jsc.cpp:25:
> | ./Source/JavaScriptCore/assembler/MacroAssemblerARM.h: In member functi=
on 'JSC::AbstractMacroAssembler<JSC::ARMAssembler>::Jump=20
> JSC::MacroAssemblerARM::branch32(JSC::MacroAssemblerARM::RelationalCondit=
ion, JSC::AbstractMacroAssembler<JSC::ARMAssembler>::RegisterID,=20
> JSC::AbstractMacroAssembler<JSC::ARMAssembler>::TrustedImm32, int)':
> | ./Source/JavaScriptCore/assembler/MacroAssemblerARM.h:446:45: warning: =
comparison between signed and unsigned integer expressions [-Wsign-compare]
> | mv -f Source/WebKit/gtk/tests/.deps/Programs_unittests_testapplicationc=
ache-testapplicationcache.Tpo=20
> Source/WebKit/gtk/tests/.deps/Programs_unittests_testapplicationcache-tes=
tapplicationcache.Po
> | In file included from ./Source/JavaScriptCore/wtf/text/WTFString.h:28:0,
> |                  from ./Source/JavaScriptCore/wtf/DateMath.h:54,
> |                  from ./Source/JavaScriptCore/runtime/JSDateMath.h:46,
> |                  from ./Source/JavaScriptCore/runtime/DateInstanceCache=
=2Eh:29,
> |                  from ./Source/JavaScriptCore/runtime/JSGlobalData.h:34,
> |                  from ./Source/JavaScriptCore/assembler/AssemblerBuffer=
=2Eh:31,
> |                  from ./Source/JavaScriptCore/assembler/AssemblerBuffer=
WithConstantPool.h:32,
> |                  from ./Source/JavaScriptCore/assembler/ARMAssembler.h:=
32,
> |                  from ./Source/JavaScriptCore/assembler/MacroAssemblerA=
RM.h:33,
> |                  from ./Source/JavaScriptCore/assembler/MacroAssembler.=
h:36,
> |                  from ./Source/JavaScriptCore/jit/JITWriteBarrier.h:31,
> |                  from ./Source/JavaScriptCore/bytecode/CallLinkInfo.h:3=
0,
> |                  from ./Source/JavaScriptCore/bytecode/CodeBlock.h:33,
> |                  from ./Source/JavaScriptCore/bytecompiler/BytecodeGene=
rator.h:34,
> |                  from Source/JavaScriptCore/jsc.cpp:25:
> | ./Source/JavaScriptCore/wtf/text/ASCIIFastPath.h: In function 'bool WTF=
::charactersAreAllASCII(const CharacterType*, size_t) [with CharacterType =
=3D unsigned char, size_t =3D=20
> unsigned int]':
> | ./Source/JavaScriptCore/wtf/text/WTFString.h:493:69:   instantiated fro=
m here
> | ./Source/JavaScriptCore/wtf/text/ASCIIFastPath.h:84:9: warning: cast fr=
om 'const unsigned char*' to 'const MachineWord* {aka const unsigned int*}'=
 increases required alignment of=20
> target type [-Wcast-align]
> | ./Source/JavaScriptCore/wtf/text/ASCIIFastPath.h: In function 'bool WTF=
::charactersAreAllASCII(const CharacterType*, size_t) [with CharacterType =
=3D short unsigned int, size_t =3D=20
> unsigned int]':
> | ./Source/JavaScriptCore/wtf/text/WTFString.h:495:66:   instantiated fro=
m here
> | ./Source/JavaScriptCore/wtf/text/ASCIIFastPath.h:84:9: warning: cast fr=
om 'const short unsigned int*' to 'const MachineWord* {aka const unsigned i=
nt*}' increases required=20
> alignment of target type [-Wcast-align]
> | mv -f Source/JavaScriptCore/.deps/Programs_jsc_1-jsc.Tpo Source/JavaScr=
iptCore/.deps/Programs_jsc_1-jsc.Po
> | make[1]: Leaving directory `/local/p60_test/tmp/work/armv7a-vfp-neon-am=
ltd-linux-gnueabi/webkit-gtk-1.8.2-r0/webkit-1.8.2'
> | make: *** [all] Error 2
> | ERROR: oe_runmake failed
> | ERROR: Function failed: do_compile (see /local/p60_test/tmp/work/armv7a=
-vfp-neon-amltd-linux-gnueabi/webkit-gtk-1.8.2-r0/temp/log.do_compile.21411=
 for further information)
> ERROR: Task 6 (/local/poky-multi/meta/recipes-sato/webkit/webkit-gtk_1.8.=
2.bb, do_compile) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 2148 tasks of which 2142 didn't need to be=
 rerun and 1 failed.
>=20
> If I rerun it, the build will succeed.
>=20
> One additional question: the commit message says that this now
> builds in 2 minutes?  What kind of super machines do you guys have?
> I takes about 30 minutes on my (I thought fast) machine just to get
> to this first break and then another 45 minutes to complete...
>=20
> --=20
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--V0207lvV8h4k8FAm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlA7nrYACgkQN1Ujt2V2gBw1WwCcCmcddSm39P4B4c2Cah5vrMxk
rLcAn0QSMzF4gHPl3Ul+eYxcFY1T1/Av
=oc6N
-----END PGP SIGNATURE-----

--V0207lvV8h4k8FAm--
