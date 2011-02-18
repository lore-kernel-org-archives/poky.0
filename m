Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f41.google.com (mail-ww0-f41.google.com [74.125.82.41])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2DEB24C8007E
	for <poky@lists.yoctoproject.org>; Fri, 18 Feb 2011 03:34:57 -0600 (CST)
Received: by wwi18 with SMTP id 18so372145wwi.2
	for <poky@lists.yoctoproject.org>; Fri, 18 Feb 2011 01:34:56 -0800 (PST)
MIME-Version: 1.0
Received: by 10.216.177.9 with SMTP id c9mr405555wem.34.1298021696039; Fri, 18
	Feb 2011 01:34:56 -0800 (PST)
Received: by 10.216.246.69 with HTTP; Fri, 18 Feb 2011 01:34:56 -0800 (PST)
Date: Fri, 18 Feb 2011 10:34:56 +0100
Message-ID: <AANLkTi==59FW4R15YrsSSR8EHWRgn2Gh9BJ2rUVPMWS+@mail.gmail.com>
From: Koen Kooi <koen@dominion.thruhere.net>
To: poky@lists.yoctoproject.org
Subject: Problem with METADATA_* vars
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
X-List-Received-Date: Fri, 18 Feb 2011 09:34:58 -0000
Content-Type: multipart/alternative; boundary=001636832eec1a696e049c8b3ad6

--001636832eec1a696e049c8b3ad6
Content-Type: text/plain; charset=UTF-8

Hi,

I have a simple recipe that does:

export METADATA_REVISION
export METADATA_BRANCH
export TARGET_SYS

do_install() {
    install -d ${D}${sysconfdir}
    echo "Angstrom ${DISTRO_VERSION}" > ${D}${sysconfdir}/angstrom-version
    echo "Built from branch: ${METADATA_BRANCH}" >>
${D}${sysconfdir}/angstrom-version
    echo "Revision: ${METADATA_REVISION}" >>
${D}${sysconfdir}/angstrom-version
    echo "Target system: ${TARGET_SYS}" >>
${D}${sysconfdir}/angstrom-version

    [..]
}

It builds fine when doing 'bitbake angstrom-version', but when doing
'bitbake console-image', which includes angstrom-version I get:

tr: write error: Broken pipe
ERROR: Error evaluating '${@base_detect_branch(d)}'
Traceback (most recent call last):
  File "/OE/tentacle/sources/bitbake/lib/bb/data_smart.py", line 117, in
expandWithRefs
    s = __expand_python_regexp__.sub(varparse.python_sub, s)
  File "/OE/tentacle/sources/bitbake/lib/bb/data_smart.py", line 76, in
python_sub
    value = utils.better_eval(codeobj, DataContext(self.d))
  File "/OE/tentacle/sources/bitbake/lib/bb/utils.py", line 387, in
better_eval
    return eval(source, _context, locals)
  File "METADATA_BRANCH", line 1, in <module>
  File "metadata_scm.bbclass", line 7, in base_detect_branch
  File "metadata_scm.bbclass", line 2, in base_get_metadata_git_branch
IOError: [Errno 4] Interrupted system call

NOTE: Error expanding variable METADATA_BRANCH
Traceback (most recent call last):
  File "/OE/tentacle/sources/bitbake/lib/bb/server/none.py", line 128, in
idle_commands
    retval = function(self, data, False)
  File "/OE/tentacle/sources/bitbake/lib/bb/cooker.py", line 700, in
buildTargetsIdle
    retval = rq.execute_runqueue()
  File "/OE/tentacle/sources/bitbake/lib/bb/runqueue.py", line 952, in
execute_runqueue
    retval = self.rqexe.execute()
  File "/OE/tentacle/sources/bitbake/lib/bb/runqueue.py", line 1304, in
execute
    pid, pipein, pipeout = self.fork_off_task(fn, task, taskname)
  File "/OE/tentacle/sources/bitbake/lib/bb/runqueue.py", line 1063, in
fork_off_task
    the_data = bb.cache.Cache.loadDataFull(fn,
self.cooker.get_file_appends(fn), self.cooker.configuration.data)
  File "/OE/tentacle/sources/bitbake/lib/bb/cache.py", line 285, in
loadDataFull
    bb_data = cls.load_bbfile(fn, appends, cfgData)
  File "/OE/tentacle/sources/bitbake/lib/bb/cache.py", line 515, in
load_bbfile
    bb_data = parse.handle(bbfile, bb_data)
  File "/OE/tentacle/sources/bitbake/lib/bb/parse/__init__.py", line 80, in
handle
    return h['handle'](fn, data, include)
  File "/OE/tentacle/sources/bitbake/lib/bb/parse/parse_py/BBHandler.py",
line 159, in handle
    return ast.multi_finalize(fn, d)
  File "/OE/tentacle/sources/bitbake/lib/bb/parse/ast.py", line 383, in
multi_finalize
    finalize(fn, d)

  File "/OE/tentacle/sources/bitbake/lib/bb/parse/ast.py", line 335, in
finalize
    bb.parse.siggen.finalise(fn, d, variant)
  File "/OE/tentacle/sources/bitbake/lib/bb/siggen.py", line 118, in
finalise
    taskdeps = self._build_data(fn, d)
  File "/OE/tentacle/sources/bitbake/lib/bb/siggen.py", line 70, in
_build_data
    tasklist, gendeps = bb.data.generate_dependencies(d)
  File "/OE/tentacle/sources/bitbake/lib/bb/data.py", line 328, in
generate_dependencies
    deps[dep] = build_dependencies(dep, keys, shelldeps, d)
  File "/OE/tentacle/sources/bitbake/lib/bb/data.py", line 298, in
build_dependencies
    parser = d.expandWithRefs(d.getVar(key, False), key)
  File "/OE/tentacle/sources/bitbake/lib/bb/data_smart.py", line 117, in
expandWithRefs
    s = __expand_python_regexp__.sub(varparse.python_sub, s)
  File "/OE/tentacle/sources/bitbake/lib/bb/data_smart.py", line 76, in
python_sub
    value = utils.better_eval(codeobj, DataContext(self.d))
  File "/OE/tentacle/sources/bitbake/lib/bb/utils.py", line 387, in
better_eval
    return eval(source, _context, locals)
  File "METADATA_BRANCH", line 1, in <module>
  File "metadata_scm.bbclass", line 7, in base_detect_branch
  File "metadata_scm.bbclass", line 2, in base_get_metadata_git_branch
IOError: [Errno 4] Interrupted system call

This started happening after
http://git.angstrom-distribution.org/cgi-bin/cgit.cgi/meta-angstrom/commit/?id=d14b9341ccae0bbd01700d1ef54a1c0a0fb98628but
I'm not sure if that's the cause.

regards,

Koen

--001636832eec1a696e049c8b3ad6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,<br><br>I have a simple recipe that does:<br><br>export METADATA_REVISIO=
N<br>export METADATA_BRANCH<br>export TARGET_SYS<br><br>do_install() {<br>=
=C2=A0=C2=A0=C2=A0 install -d ${D}${sysconfdir}<br>=C2=A0=C2=A0=C2=A0 echo =
&quot;Angstrom ${DISTRO_VERSION}&quot; &gt; ${D}${sysconfdir}/angstrom-vers=
ion<br>
=C2=A0=C2=A0=C2=A0 echo &quot;Built from branch: ${METADATA_BRANCH}&quot; &=
gt;&gt; ${D}${sysconfdir}/angstrom-version<br>=C2=A0=C2=A0=C2=A0 echo &quot=
;Revision: ${METADATA_REVISION}&quot; &gt;&gt; ${D}${sysconfdir}/angstrom-v=
ersion<br>=C2=A0=C2=A0=C2=A0 echo &quot;Target system: ${TARGET_SYS}&quot; =
&gt;&gt; ${D}${sysconfdir}/angstrom-version<br>
<br>=C2=A0=C2=A0=C2=A0 [..]<br>}<br><br>It builds fine when doing &#39;bitb=
ake angstrom-version&#39;, but when doing &#39;bitbake console-image&#39;, =
which includes angstrom-version I get:<br><br>tr: write error: Broken pipe<=
br>ERROR: Error evaluating &#39;${@base_detect_branch(d)}&#39;<br>
Traceback (most recent call last):<br>=C2=A0 File &quot;/OE/tentacle/source=
s/bitbake/lib/bb/data_smart.py&quot;, line 117, in expandWithRefs<br>=C2=A0=
=C2=A0=C2=A0 s =3D __expand_python_regexp__.sub(varparse.python_sub, s)<br>=
=C2=A0 File &quot;/OE/tentacle/sources/bitbake/lib/bb/data_smart.py&quot;, =
line 76, in python_sub<br>
=C2=A0=C2=A0=C2=A0 value =3D utils.better_eval(codeobj, DataContext(self.d)=
)<br>=C2=A0 File &quot;/OE/tentacle/sources/bitbake/lib/bb/utils.py&quot;, =
line 387, in better_eval<br>=C2=A0=C2=A0=C2=A0 return eval(source, _context=
, locals)<br>=C2=A0 File &quot;METADATA_BRANCH&quot;, line 1, in &lt;module=
&gt;<br>
=C2=A0 File &quot;metadata_scm.bbclass&quot;, line 7, in base_detect_branch=
<br>=C2=A0 File &quot;metadata_scm.bbclass&quot;, line 2, in base_get_metad=
ata_git_branch<br>IOError: [Errno 4] Interrupted system call<br><br>NOTE: E=
rror expanding variable METADATA_BRANCH<br>
Traceback (most recent call last):<br>=C2=A0 File &quot;/OE/tentacle/source=
s/bitbake/lib/bb/server/none.py&quot;, line 128, in idle_commands<br>=C2=A0=
=C2=A0=C2=A0 retval =3D function(self, data, False)<br>=C2=A0 File &quot;/O=
E/tentacle/sources/bitbake/lib/bb/cooker.py&quot;, line 700, in buildTarget=
sIdle<br>
=C2=A0=C2=A0=C2=A0 retval =3D rq.execute_runqueue()<br>=C2=A0 File &quot;/O=
E/tentacle/sources/bitbake/lib/bb/runqueue.py&quot;, line 952, in execute_r=
unqueue<br>=C2=A0=C2=A0=C2=A0 retval =3D self.rqexe.execute()<br>=C2=A0 Fil=
e &quot;/OE/tentacle/sources/bitbake/lib/bb/runqueue.py&quot;, line 1304, i=
n execute<br>
=C2=A0=C2=A0=C2=A0 pid, pipein, pipeout =3D self.fork_off_task(fn, task, ta=
skname)<br>=C2=A0 File &quot;/OE/tentacle/sources/bitbake/lib/bb/runqueue.p=
y&quot;, line 1063, in fork_off_task<br>=C2=A0=C2=A0=C2=A0 the_data =3D bb.=
cache.Cache.loadDataFull(fn, self.cooker.get_file_appends(fn), self.cooker.=
configuration.data)<br>
=C2=A0 File &quot;/OE/tentacle/sources/bitbake/lib/bb/cache.py&quot;, line =
285, in loadDataFull<br>=C2=A0=C2=A0=C2=A0 bb_data =3D cls.load_bbfile(fn, =
appends, cfgData)<br>=C2=A0 File &quot;/OE/tentacle/sources/bitbake/lib/bb/=
cache.py&quot;, line 515, in load_bbfile<br>
=C2=A0=C2=A0=C2=A0 bb_data =3D parse.handle(bbfile, bb_data)<br>=C2=A0 File=
 &quot;/OE/tentacle/sources/bitbake/lib/bb/parse/__init__.py&quot;, line 80=
, in handle<br>=C2=A0=C2=A0=C2=A0 return h[&#39;handle&#39;](fn, data, incl=
ude)<br>=C2=A0 File &quot;/OE/tentacle/sources/bitbake/lib/bb/parse/parse_p=
y/BBHandler.py&quot;, line 159, in handle<br>
=C2=A0=C2=A0=C2=A0 return ast.multi_finalize(fn, d)<br>=C2=A0 File &quot;/O=
E/tentacle/sources/bitbake/lib/bb/parse/ast.py&quot;, line 383, in multi_fi=
nalize<br>=C2=A0=C2=A0=C2=A0 finalize(fn, d)<br><br>=C2=A0 File &quot;/OE/t=
entacle/sources/bitbake/lib/bb/parse/ast.py&quot;, line 335, in finalize<br=
>
=C2=A0=C2=A0=C2=A0 bb.parse.siggen.finalise(fn, d, variant)<br>=C2=A0 File =
&quot;/OE/tentacle/sources/bitbake/lib/bb/siggen.py&quot;, line 118, in fin=
alise<br>=C2=A0=C2=A0=C2=A0 taskdeps =3D self._build_data(fn, d)<br>=C2=A0 =
File &quot;/OE/tentacle/sources/bitbake/lib/bb/siggen.py&quot;, line 70, in=
 _build_data<br>
=C2=A0=C2=A0=C2=A0 tasklist, gendeps =3D bb.data.generate_dependencies(d)<b=
r>=C2=A0 File &quot;/OE/tentacle/sources/bitbake/lib/bb/data.py&quot;, line=
 328, in generate_dependencies<br>=C2=A0=C2=A0=C2=A0 deps[dep] =3D build_de=
pendencies(dep, keys, shelldeps, d)<br>
=C2=A0 File &quot;/OE/tentacle/sources/bitbake/lib/bb/data.py&quot;, line 2=
98, in build_dependencies<br>=C2=A0=C2=A0=C2=A0 parser =3D d.expandWithRefs=
(d.getVar(key, False), key)<br>=C2=A0 File &quot;/OE/tentacle/sources/bitba=
ke/lib/bb/data_smart.py&quot;, line 117, in expandWithRefs<br>
=C2=A0=C2=A0=C2=A0 s =3D __expand_python_regexp__.sub(varparse.python_sub, =
s)<br>=C2=A0 File &quot;/OE/tentacle/sources/bitbake/lib/bb/data_smart.py&q=
uot;, line 76, in python_sub<br>=C2=A0=C2=A0=C2=A0 value =3D utils.better_e=
val(codeobj, DataContext(self.d))<br>
=C2=A0 File &quot;/OE/tentacle/sources/bitbake/lib/bb/utils.py&quot;, line =
387, in better_eval<br>=C2=A0=C2=A0=C2=A0 return eval(source, _context, loc=
als)<br>=C2=A0 File &quot;METADATA_BRANCH&quot;, line 1, in &lt;module&gt;<=
br>=C2=A0 File &quot;metadata_scm.bbclass&quot;, line 7, in base_detect_bra=
nch<br>
=C2=A0 File &quot;metadata_scm.bbclass&quot;, line 2, in base_get_metadata_=
git_branch<br>IOError: [Errno 4] Interrupted system call<br><br>This starte=
d happening after <a href=3D"http://git.angstrom-distribution.org/cgi-bin/c=
git.cgi/meta-angstrom/commit/?id=3Dd14b9341ccae0bbd01700d1ef54a1c0a0fb98628=
">http://git.angstrom-distribution.org/cgi-bin/cgit.cgi/meta-angstrom/commi=
t/?id=3Dd14b9341ccae0bbd01700d1ef54a1c0a0fb98628</a> but I&#39;m not sure i=
f that&#39;s the cause.<br>
<br>regards,<br><br>Koen<br>

--001636832eec1a696e049c8b3ad6--
