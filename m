Return-Path: <nitishjha16@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B90DE00867; Tue, 21 Mar 2017 06:16:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nitishjha16[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D9B6E007AA
	for <poky@yoctoproject.org>; Tue, 21 Mar 2017 06:16:47 -0700 (PDT)
Received: by mail-io0-f182.google.com with SMTP id f84so47982938ioj.0
	for <poky@yoctoproject.org>; Tue, 21 Mar 2017 06:16:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=B2UV7YLGcSVprV+GpDom6Po26zqiR5H1+D9JMA6TvMM=;
	b=YHx9hgPydmtVsyOBa8T8ULrPjLhIfVsNJhnUrp35DGPKV0HUSsrmUydD+W6iQpxSLf
	6JlXAihqCh/H3eZy9wprCBGKBonlDc9pnSaj8o6zsPui1+ndUhkyC15yM+IdcylbS2MS
	nnZ0F6jL2SLvaZtWI+hKuedhMyT7vVT+CG/buP8LciI9SEix2WPV+w3fGnVazI+nfVS3
	f6DleWFUNznknhDlOMAZK61x2rUVWU0fxdzMQuSz9oXXQ1Rw9XSV+XX6QOp7m2t8ytA0
	u+neu2OhT9IlalMe1EEgD+HDLW9lM2nmhhsfRGWEn38jNA8VrZGBPfYa4u78Gq5BbrTy
	lv7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=B2UV7YLGcSVprV+GpDom6Po26zqiR5H1+D9JMA6TvMM=;
	b=DVA9K7Liea00YmbVFhsRjMRQuNF6RK7gPBOjff6Iv977YeiVsjcl6jn5HDg8DoRhw/
	fXnL4Uq855q6U9gHte9WdQLU5RTP++RckhrlykLrKHFDDMMIRWiZy1nJrLScgMk8lS+J
	J1NWoar6+aoES7F7ebgFlchmMoPBBQw1OqEHcwuPzVpx8T245jgcdZkc8slp6tRu7Cd2
	ltS+D+Hh9tDkA0t1WcHKnMnDz+vsNnnnDQe7S0GhQD6HcBmX6uYi9jhe1Zns0edWfwsC
	6wnc22hWLVB9WeX0reVwBiwhez1fjrDUIji7sK12znj1EJrZaV2DoPLtmebTOTYnj24g
	9bhg==
X-Gm-Message-State: AFeK/H1dCyk7EJvhzzwvks3wlOZGclU8wqyTMF/TEuGwh52M4ENKJwkaTaPwD15AoKbTfNVriWNpoCb5fdkQJg==
X-Received: by 10.107.131.22 with SMTP id f22mr31283544iod.40.1490102206117;
	Tue, 21 Mar 2017 06:16:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.139.138 with HTTP; Tue, 21 Mar 2017 06:16:45 -0700 (PDT)
From: nitish jha <nitishjha16@gmail.com>
Date: Tue, 21 Mar 2017 14:16:45 +0100
Message-ID: <CABh+fobNXQK8NrDzwKRaOs4rWixEUJA3Bi6QL=we+XS6AsUjhA@mail.gmail.com>
To: poky@yoctoproject.org
Subject: [extendable-sdk] patch to fix devtool error
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
X-List-Received-Date: Tue, 21 Mar 2017 13:16:48 -0000
Content-Type: multipart/alternative; boundary=001a113ecdeaacef4f054b3d747d

--001a113ecdeaacef4f054b3d747d
Content-Type: text/plain; charset=UTF-8

Hello All,

While building extendable sdk i found error related to devtool

ERROR: Error executing a python function

The stack trace of python calls that resulted in this exception/failure was:
File: 'copy_buildsystem', lineno: 148, function: <module>
     0144:                                                   sstate_out, d,
     0145:                                                   fixedlsbstring)
     0146:
     0147:
 *** 0148:copy_buildsystem(d)
     0149:
File: 'copy_buildsystem', lineno: 59, function: copy_buildsystem
     0055:        config.write(f)
     0056:
     0057:    # Create a layer for new recipes / appends
     0058:    bbpath = d.getVar('BBPATH', True)
 *** 0059:    bb.process.run(['devtool', '--bbpath', bbpath, '--basepath',
baseoutpath, 'create-workspace', '--create-only', os.path.join(baseoutpath,
'workspace')])
     0060:
     0061:    # Create bblayers.conf
     0062:    bb.utils.mkdirhier(baseoutpath + '/conf')
     0063:    with open(baseoutpath + '/conf/bblayers.conf', 'w') as f:
File: '/home/testuser/CAS/poky/bitbake/lib/bb/process.py', lineno: 155,
function: run
     0151:    else:
     0152:        stdout, stderr = pipe.communicate(input)
     0153:
     0154:    if pipe.returncode != 0:
 *** 0155:        raise ExecutionError(cmd, pipe.returncode, stdout, stderr)
     0156:    return stdout, stderr
Exception: ExecutionError: Execution of 'devtool --bbpath ' failed with
exit code 1:
Traceback (most recent call last):
  File "/home/testuser/CAS/poky/scripts/devtool", line 287, in <module>
    ret = main()
  File "/home/testuser/CAS/poky/scripts/devtool", line 251, in main
    scriptutils.load_plugins(logger, plugins, pluginpath)
  File "/home/testuser/CAS/poky/scripts/lib/scriptutils.py", line 57, in
load_plugins
    plugin = load_plugin(name)
  File "/home/testuser/CAS/poky/scripts/lib/scriptutils.py", line 48, in
load_plugin
    return imp.load_module(name, fp, pathname, description)
  File "/home/testuser/CAS/poky/scripts/lib/devtool/upgrade.py", line 30,
in <module>
    import recipeutils
ImportError: No module named recipeutils


ERROR: Function failed: copy_buildsystem

I found that lib path where devtool expects recipeutils is not correct so I
appended recipeutils path to lib directory path of devtool

patch details are:


*diff --git a/scripts/devtool b/scripts/devtool*
*index 9ac6e79..715d045 100755*
*--- a/scripts/devtool*
*+++ b/scripts/devtool*
*@@ -35,6 +35,9 @@ context = None*
* scripts_path = os.path.dirname(os.path.realpath(__file__))*
* lib_path = scripts_path + '/lib'*
* sys.path = sys.path + [lib_path]*
*+*
*+oe_path = os.path.abspath(os.path.join(scripts_path, "..", "meta",
"lib"))*
*+sys.path.append(oe_path)*
* from devtool import DevtoolError, setup_tinfoil*
* import scriptutils*
* import argparse_oe*
*-- *

Can somebody test and update it in poky.

Thanks and Regards
-- 
*Nitish Jha*

--001a113ecdeaacef4f054b3d747d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello All,<div><br></div><div>While building extendable sd=
k i found error related to devtool=C2=A0</div><div><br></div><div><div>ERRO=
R: Error executing a python function=C2=A0</div><div><br></div><div>The sta=
ck trace of python calls that resulted in this exception/failure was:</div>=
<div>File: &#39;copy_buildsystem&#39;, lineno: 148, function: &lt;module&gt=
;</div><div>=C2=A0 =C2=A0 =C2=A00144: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sstate_o=
ut, d,</div><div>=C2=A0 =C2=A0 =C2=A00145: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fixed=
lsbstring)</div><div>=C2=A0 =C2=A0 =C2=A00146:</div><div>=C2=A0 =C2=A0 =C2=
=A00147:</div><div>=C2=A0*** 0148:copy_buildsystem(d)</div><div>=C2=A0 =C2=
=A0 =C2=A00149:</div><div>File: &#39;copy_buildsystem&#39;, lineno: 59, fun=
ction: copy_buildsystem</div><div>=C2=A0 =C2=A0 =C2=A00055: =C2=A0 =C2=A0 =
=C2=A0 =C2=A0config.write(f)</div><div>=C2=A0 =C2=A0 =C2=A00056:</div><div>=
=C2=A0 =C2=A0 =C2=A00057: =C2=A0 =C2=A0# Create a layer for new recipes / a=
ppends</div><div>=C2=A0 =C2=A0 =C2=A00058: =C2=A0 =C2=A0bbpath =3D d.getVar=
(&#39;BBPATH&#39;, True)</div><div>=C2=A0*** 0059: =C2=A0 =C2=A0bb.process.=
run([&#39;devtool&#39;, &#39;--bbpath&#39;, bbpath, &#39;--basepath&#39;, b=
aseoutpath, &#39;create-workspace&#39;, &#39;--create-only&#39;, os.path.jo=
in(baseoutpath, &#39;workspace&#39;)])</div><div>=C2=A0 =C2=A0 =C2=A00060:<=
/div><div>=C2=A0 =C2=A0 =C2=A00061: =C2=A0 =C2=A0# Create bblayers.conf</di=
v><div>=C2=A0 =C2=A0 =C2=A00062: =C2=A0 =C2=A0bb.utils.mkdirhier(baseoutpat=
h + &#39;/conf&#39;)</div><div>=C2=A0 =C2=A0 =C2=A00063: =C2=A0 =C2=A0with =
open(baseoutpath + &#39;/conf/bblayers.conf&#39;, &#39;w&#39;) as f:</div><=
div>File: &#39;/home/testuser/CAS/poky/bitbake/lib/bb/process.py&#39;, line=
no: 155, function: run</div><div>=C2=A0 =C2=A0 =C2=A00151: =C2=A0 =C2=A0els=
e:</div><div>=C2=A0 =C2=A0 =C2=A00152: =C2=A0 =C2=A0 =C2=A0 =C2=A0stdout, s=
tderr =3D pipe.communicate(input)</div><div>=C2=A0 =C2=A0 =C2=A00153:</div>=
<div>=C2=A0 =C2=A0 =C2=A00154: =C2=A0 =C2=A0if pipe.returncode !=3D 0:</div=
><div>=C2=A0*** 0155: =C2=A0 =C2=A0 =C2=A0 =C2=A0raise ExecutionError(cmd, =
pipe.returncode, stdout, stderr)</div><div>=C2=A0 =C2=A0 =C2=A00156: =C2=A0=
 =C2=A0return stdout, stderr</div><div>Exception: ExecutionError: Execution=
 of &#39;devtool --bbpath &#39; failed with exit code 1:</div><div>Tracebac=
k (most recent call last):</div><div>=C2=A0 File &quot;/home/testuser/CAS/p=
oky/scripts/devtool&quot;, line 287, in &lt;module&gt;</div><div>=C2=A0 =C2=
=A0 ret =3D main()</div><div>=C2=A0 File &quot;/home/testuser/CAS/poky/scri=
pts/devtool&quot;, line 251, in main</div><div>=C2=A0 =C2=A0 scriptutils.lo=
ad_plugins(logger, plugins, pluginpath)</div><div>=C2=A0 File &quot;/home/t=
estuser/CAS/poky/scripts/lib/scriptutils.py&quot;, line 57, in load_plugins=
</div><div>=C2=A0 =C2=A0 plugin =3D load_plugin(name)</div><div>=C2=A0 File=
 &quot;/home/testuser/CAS/poky/scripts/lib/scriptutils.py&quot;, line 48, i=
n load_plugin</div><div>=C2=A0 =C2=A0 return imp.load_module(name, fp, path=
name, description)</div><div>=C2=A0 File &quot;/home/testuser/CAS/poky/scri=
pts/lib/devtool/upgrade.py&quot;, line 30, in &lt;module&gt;</div><div>=C2=
=A0 =C2=A0 import recipeutils</div><div>ImportError: No module named recipe=
utils</div><div><br></div><div><br></div><div>ERROR: Function failed: copy_=
buildsystem</div><div><br></div><div>I found that lib path where devtool ex=
pects recipeutils=C2=A0is not correct so I appended recipeutils path to lib=
 directory path of devtool</div><div><br></div><div>patch details are:</div=
><div><br></div><div><br></div><div><div><b>diff --git a/scripts/devtool b/=
scripts/devtool</b></div><div><b>index 9ac6e79..715d045 100755</b></div><di=
v><b>--- a/scripts/devtool</b></div><div><b>+++ b/scripts/devtool</b></div>=
<div><b>@@ -35,6 +35,9 @@ context =3D None</b></div><div><b>=C2=A0scripts_p=
ath =3D os.path.dirname(os.path.realpath(__file__))</b></div><div><b>=C2=A0=
lib_path =3D scripts_path + &#39;/lib&#39;</b></div><div><b>=C2=A0sys.path =
=3D sys.path + [lib_path]</b></div><div><b>+</b></div><div><b>+oe_path =3D =
os.path.abspath(os.path.join(scripts_path, &quot;..&quot;, &quot;meta&quot;=
, &quot;lib&quot;))</b></div><div><b>+sys.path.append(oe_path)</b></div><di=
v><b>=C2=A0from devtool import DevtoolError, setup_tinfoil</b></div><div><b=
>=C2=A0import scriptutils</b></div><div><b>=C2=A0import argparse_oe</b></di=
v><div><b>--=C2=A0</b></div></div><div><br></div><div>Can somebody test and=
 update it in poky.</div><div><br></div><div>Thanks and Regards</div>-- <br=
><div class=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div style=3D"font-family:arial;=
font-size:small"><div><b>Nitish Jha</b></div><div><b><br></b></div><div><br=
></div></div></div></div></div></div></div></div>
</div></div>

--001a113ecdeaacef4f054b3d747d--
