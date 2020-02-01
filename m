Subject: file utility killed (SIGSYS)
To: poky@lists.yoctoproject.org
From: "Sven" <sven@svenschwermer.de>
X-Originating-Location: Trondheim, Trøndelag, NO (109.108.210.20)
X-Originating-Platform: Linux Firefox 72
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 01 Feb 2020 14:41:15 -0800
Message-ID: <fXtW.1580596875003428513.iSVn@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I noticed a regression after updating the file utility on my host system t=
o a version that has seccomp enabled. See https://git.archlinux.org/svntogi=
t/packages.git/commit/trunk?h=3Dpackages/file&id=3Da52fa0a37bad1f4ab67a934a=
4e0025e70aa1fd0e (I know that Arch is not officially supported). This leads=
 to error messages that look as follows:

Command '['file', '-b', '/home/sven/mys-dac/yocto/build/tmp/work/cortexa7t=
2hf-neon-poky-linux-gnueabi/initscripts/1.0-r155/package/etc/init.d/umountn=
fs.sh']' died with <Signals.SIGSYS: 31>.: Traceback (most recent call last)=
:
  File "/home/sven/mys-dac/yocto/poky/meta/lib/oe/utils.py", line 276, in =
run
    ret =3D self._target(*self._args, **self._kwargs)
  File "/home/sven/mys-dac/yocto/poky/meta/lib/oe/package.py", line 74, in=
 is_elf
    result =3D subprocess.check_output(["file", "-b", path], stderr=3Dsubp=
rocess.STDOUT).decode("utf-8")
  File "/usr/lib/python3.8/subprocess.py", line 411, in check_output
    return run(*popenargs, stdout=3DPIPE, timeout=3Dtimeout, check=3DTrue,
  File "/usr/lib/python3.8/subprocess.py", line 512, in run
    raise CalledProcessError(retcode, process.args,
subprocess.CalledProcessError: Command '['file', '-b', '/home/sven/mys-dac=
/yocto/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/initscripts/1.0-=
r155/package/etc/init.d/umountnfs.sh']' died with <Signals.SIGSYS: 31>.

This error doesn't appear when running the file command from the host syst=
em. The culprit is the LD_PRELOAD of libpseudo. As soon as libpseudo is loa=
ded, the file process is killed with SIGSYS by seccomp, see http://man7.org=
/linux/man-pages/man2/seccomp.2.html
Downgrading to a file version that doesn't have seccomp enabled fixes the =
issue.

I am on the zeus branch. This happens on today's zeus HEAD (69cfd69410).

Best regards,
Sven
