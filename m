Return-Path: <manumathens@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51B53E0084A; Sat, 17 Mar 2018 06:46:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (manumathens[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47D8FE00944
	for <poky@yoctoproject.org>; Sat, 17 Mar 2018 06:46:31 -0700 (PDT)
Received: by mail-wm0-f51.google.com with SMTP id w128so7920337wmw.0
	for <poky@yoctoproject.org>; Sat, 17 Mar 2018 06:46:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=Cf0ZglDRYxJeFpIMtsiVn6bYBMTqUNI99dtwKFBq1+Q=;
	b=H8oIcVKAxbnoakwz3AWDVOzK493uWyZmsJveiTv9Ok6c/ySwoXn1JqY+YZ3GckZ7Q8
	IuBlaCyuwhUARqvhntJU0UJM7eKGPZ8zfSy5aoetrdaJXUZNXDIAnKTrvgd8GRUUuEJ+
	cPwA/ryKg8mEbU6/aWff3rKFRU+TLu11dIw8TIAvz3lKAog5EWTlHEBMl1q6EAnI9gaA
	O/ebEBsmHFpfCHE3hnuTOBkVf7kT0T6l41BIHCW5wZEA+8dcIeTUQKOwkd0P3fvPogeo
	/UU7rVFPGUuZYwCykM1lS8SmASL9nsVlC7CqK+7SUcwhl65h9nOm9C3MHCYKiIKsQOVv
	neUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=Cf0ZglDRYxJeFpIMtsiVn6bYBMTqUNI99dtwKFBq1+Q=;
	b=sadnxFnZkDpl0avojizzG+HClBqnJ+lSPwcV5Wjvv5KGMZ8KE72svRvm+J63/CFUbk
	IsyiJBh2UM9N8crQPwvn72cBQkNmiDAL3Hb7UFlo//bF1VDCqAxW+yJ1W3ZDgEYy7Lkb
	UKkxBhVARds711Ws9DkT0p28a0Kk9g0kuThoQCQoHfh47DLqFSpFR7TfiscEBOfAYRAd
	1AW4ZolRyFAyaZXP+h1GmvGnYfsVFiHW4jRvVsn+GiLjv3Kr6LUoxla/Nd/jVWVtzpdq
	8xnVR7U0l9IOXqotWQZRtkEY9wLngAOUTxdgVeU6QN691H2/tDvbcX+c/gNgW+G4umSD
	qaYw==
X-Gm-Message-State: AElRT7EH66bf7k59uT4PLE2Gh9ZcWLXUYnaKej0TemIVldE+MZaNNqch
	bcVJGTY4NY8BDmhd8krP5GqnM0N84g2Af0f/8PYWeNE5
X-Google-Smtp-Source: AG47ELt8kAAi3oiZR0Bc5C9xglO+MmTxmJMlt0gBH2m2vnbLyE6w+ozxR7H6T80pCXyGFgUy9YQCyN9UAIQ1BNLp+Ck=
X-Received: by 10.28.208.131 with SMTP id h125mr937954wmg.57.1521294390432;
	Sat, 17 Mar 2018 06:46:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.29.8 with HTTP; Sat, 17 Mar 2018 06:45:50 -0700 (PDT)
In-Reply-To: <mailman.17.1521226801.7813.poky@yoctoproject.org>
References: <mailman.17.1521226801.7813.poky@yoctoproject.org>
From: Manu Mathen <manumathens@gmail.com>
Date: Sat, 17 Mar 2018 16:45:50 +0300
Message-ID: <CA+yucNXzH1E6r-2fP2ggvef9LjNGdu-GG2G=nhyqSDRkVTQ4sg@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Re: poky Digest, Vol 90, Issue 5
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
X-List-Received-Date: Sat, 17 Mar 2018 13:46:34 -0000
Content-Type: multipart/alternative; boundary="94eb2c0c2934bd972c05679bf30e"

--94eb2c0c2934bd972c05679bf30e
Content-Type: text/plain; charset="UTF-8"

Thank you for your reply Ross. I ran memtest with the default test
parameters and it seems to be fine. I have 8GB of ram and have an i7
processor on this computer, is that enough to complete the poky build ? As
for heating issues, the laptop has always just been slightly warm. Once the
restart problem happens, the laptop restarts even when it's cool and has
just been running for a minute. I have noticed this error several times
through the syslog always, "nouveau 0000:03:00.0: fifo: SCHED_ERROR 20 []".
Would something from the graphics card affect the build ? I will try and
replace this with the nvidia drivers and give it a go. This is the log when
the build reaches around 85%,

ERROR: core-image-sato-1.0-r0 do_rootfs: Error executing a python function
in exec_python_func() autogenerated:

The stack trace of python calls that resulted in this exception/failure was:
File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
     0001:
 *** 0002:do_rootfs(d)
     0003:
File: '/home/manu/poky/meta/classes/image.bbclass', lineno: 258, function:
do_rootfs
     0254:    progress_reporter.next_stage()
     0255:
     0256:    # generate rootfs
     0257:    d.setVarFlag('REPRODUCIBLE_TIMESTAMP_ROOTFS', 'export', '1')
 *** 0258:    create_rootfs(d, progress_reporter=progress_reporter,
logcatcher=logcatcher)
     0259:
     0260:    progress_reporter.finish()
     0261:}
     0262:do_rootfs[dirs] = "${TOPDIR}"
File: '/home/manu/poky/meta/lib/oe/rootfs.py', lineno: 1010, function:
create_rootfs
     1006:    env_bkp = os.environ.copy()
     1007:
     1008:    img_type = d.getVar('IMAGE_PKGTYPE')
     1009:    if img_type == "rpm":
 *** 1010:        RpmRootfs(d, manifest_dir, progress_reporter,
logcatcher).create()
     1011:    elif img_type == "ipk":
     1012:        OpkgRootfs(d, manifest_dir, progress_reporter,
logcatcher).create()
     1013:    elif img_type == "deb":
     1014:        DpkgRootfs(d, manifest_dir, progress_reporter,
logcatcher).create()
File: '/home/manu/poky/meta/lib/oe/rootfs.py', lineno: 201, function: create
     0197:        if self.progress_reporter:
     0198:            self.progress_reporter.next_stage()
     0199:
     0200:        # call the package manager dependent create method
 *** 0201:        self._create()
     0202:
     0203:        sysconfdir = self.image_rootfs +
self.d.getVar('sysconfdir')
     0204:        bb.utils.mkdirhier(sysconfdir)
     0205:        with open(sysconfdir + "/version", "w+") as ver:
File: '/home/manu/poky/meta/lib/oe/rootfs.py', lineno: 450, function:
_create
     0446:        rpm_pre_process_cmds =
self.d.getVar('RPM_PREPROCESS_COMMANDS')
     0447:        rpm_post_process_cmds =
self.d.getVar('RPM_POSTPROCESS_COMMANDS')
     0448:
     0449:        # update PM index files
 *** 0450:        self.pm.write_index()
     0451:
     0452:        execute_pre_post_process(self.d, rpm_pre_process_cmds)
     0453:
     0454:        if self.progress_reporter:
File: '/home/manu/poky/meta/lib/oe/package_manager.py', lineno: 543,
function: write_index
     0539:
     0540:    def write_index(self):
     0541:        lockfilename = self.d.getVar('DEPLOY_DIR_RPM') +
"/rpm.lock"
     0542:        lf = bb.utils.lockfile(lockfilename, False)
 *** 0543:        RpmIndexer(self.d, self.rpm_repo_dir).write_index()
     0544:        bb.utils.unlockfile(lf)
     0545:
     0546:    def insert_feeds_uris(self, feed_uris, feed_base_paths,
feed_archs):
     0547:        from urllib.parse import urlparse
File: '/home/manu/poky/meta/lib/oe/package_manager.py', lineno: 105,
function: write_index
     0101:        else:
     0102:            signer = None
     0103:
     0104:        createrepo_c = bb.utils.which(os.environ['PATH'],
"createrepo_c")
 *** 0105:        result = create_index("%s --update -q %s" %
(createrepo_c, self.deploy_dir))
     0106:        if result:
     0107:            bb.fatal(result)
     0108:
     0109:        # Sign repomd
File: '/home/manu/poky/meta/lib/oe/package_manager.py', lineno: 21,
function: create_index
     0017:def create_index(arg):
     0018:    index_cmd = arg
     0019:
     0020:    bb.note("Executing '%s' ..." % index_cmd)
 *** 0021:    result = subprocess.check_output(index_cmd,
stderr=subprocess.STDOUT, shell=True).decode("utf-8")
     0022:    if result:
     0023:        bb.note(result)
     0024:
     0025:"""
File: '/usr/lib/python3.5/subprocess.py', lineno: 626, function:
check_output
     0622:        # empty string. That is maintained here for backwards
compatibility.
     0623:        kwargs['input'] = '' if kwargs.get('universal_newlines',
False) else b''
     0624:
     0625:    return run(*popenargs, stdout=PIPE, timeout=timeout,
check=True,
 *** 0626:               **kwargs).stdout
     0627:
     0628:
     0629:class CompletedProcess(object):
     0630:    """A process that has finished running.
File: '/usr/lib/python3.5/subprocess.py', lineno: 708, function: run
     0704:            raise
     0705:        retcode = process.poll()
     0706:        if check and retcode:
     0707:            raise CalledProcessError(retcode, process.args,
 *** 0708:                                     output=stdout, stderr=stderr)
     0709:    return CompletedProcess(process.args, retcode, stdout, stderr)
     0710:
     0711:
     0712:def list2cmdline(seq):
Exception: subprocess.CalledProcessError: Command
'/home/manu/poky/build/tmp/work/qemux86_64-poky-linux/core-image-sato/1.0-r0/recipe-sysroot-native/usr/bin/createrepo_c
--update -q
/home/manu/poky/build/tmp/work/qemux86_64-poky-linux/core-image-sato/1.0-r0/oe-rootfs-repo'
returned non-zero exit status 1

Subprocess output:
Temporary repodata directory
/home/manu/poky/build/tmp/work/qemux86_64-poky-linux/core-image-sato/1.0-r0/oe-rootfs-repo/.repodata/
already exists! (Another createrepo process is running?)

ERROR: core-image-sato-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in:
/home/manu/poky/build/tmp/work/qemux86_64-poky-linux/core-image-sato/1.0-r0/temp/log.do_rootfs.3494
ERROR: Task (/home/manu/poky/meta/recipes-sato/images/core-image-sato.bb:do_rootfs)
failed with exit code '1'


On Fri, Mar 16, 2018 at 10:00 PM, <poky-request@yoctoproject.org> wrote:

> Send poky mailing list submissions to
>         poky@yoctoproject.org
>
> To subscribe or unsubscribe via the World Wide Web, visit
>         https://lists.yoctoproject.org/listinfo/poky
> or, via email, send a message with subject or body 'help' to
>         poky-request@yoctoproject.org
>
> You can reach the person managing the list at
>         poky-owner@yoctoproject.org
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of poky digest..."
>
>
> Today's Topics:
>
>    1. Re: Poky Build Error (Burton, Ross)
>
>
> ----------------------------------------------------------------------
>
> Message: 1
> Date: Fri, 16 Mar 2018 15:35:41 +0000
> From: "Burton, Ross" <ross.burton@intel.com>
> To: Manu Mathen <manumathens@gmail.com>
> Cc: Poky Project <poky@yoctoproject.org>
> Subject: Re: [poky] Poky Build Error
> Message-ID:
>         <CAJTo0LZDXi+-XM2SGpB2k0ezgPpMNkbxe7HRm6Rd17
> YjJ9eQUA@mail.gmail.com>
> Content-Type: text/plain; charset="utf-8"
>
> If the computer is restarting then that's obviously nothing to do with
> bitbake/yocto itself, but your computer can't handle the stress that a full
> build is causing.
>
> Usual culprits are badly installed or failing RAM (run memtest), or
> insufficient ventilation causing a thermal shutdown.
>
> Ross
>
> On 16 March 2018 at 11:08, Manu Mathen <manumathens@gmail.com> wrote:
>
> > Hi. Hope your doing well. I've been trying to build poky on Ubuntu 16.04.
> > I've set up the required files from the quick start guide 2.4.2. The
> build
> > has reached about 70%, but ever since it got to about 50%, the computer
> > keeps restarting during the build. Since this happened, I tried do do a
> > clean install of Ubuntu and start over, but it's been the same. The build
> > progresses with the restarts from where it stopped, but I get an error
> > later in the build and can't proceed. This is what I noticed from the
> > cookerdaemon.log file, these lines keep repeating before the restart
> > happens, or these are the last lines logged before I start the build
> again
> > .
> >
> >
> > Running command ['getVariable', 'BB_DEFAULT_TASK']
> > Running command ['setConfig', 'cmd', 'build']
> > Running command ['buildTargets', ['core-image-sato'], 'build']
> > Connecting Client
> > Disconnecting Client
> > No timeout, exiting.
> >
> > I have attached the log file below too, has anyone experienced this
> before
> > or know what's wrong. Thank you in advance.
> >
> > Manu Mathen
> >
> > --
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
> >
> >
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.yoctoproject.org/pipermail/poky/
> attachments/20180316/def526d6/attachment-0001.html>
>
> ------------------------------
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
>
> End of poky Digest, Vol 90, Issue 5
> ***********************************
>

--94eb2c0c2934bd972c05679bf30e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"color:rgb(61,133,198=
)">Thank you for your reply Ross. I ran memtest with the default test param=
eters and it seems to be fine. I have 8GB of ram and have an i7 processor o=
n this computer, is that enough to complete the poky build ? As for heating=
 issues, the laptop has always just been slightly warm. Once the restart pr=
oblem happens, the laptop restarts even when it&#39;s cool and has just bee=
n running for a minute. I have noticed this error several times through the=
 syslog always, &quot;nouveau 0000:03:00.0: fifo: SCHED_ERROR 20 []&quot;. =
Would something from the graphics card affect the build ? I will try and re=
place this with the nvidia drivers and give it a go. This is the log when t=
he build reaches around 85%, <br><br><span style=3D"color:rgb(0,0,0)">ERROR=
: core-image-sato-1.0-r0 do_rootfs: Error executing a python function in ex=
ec_python_func() autogenerated:<br><br>The stack trace of python calls that=
 resulted in this exception/failure was:<br>File: &#39;exec_python_func() a=
utogenerated&#39;, lineno: 2, function: &lt;module&gt;<br>=C2=A0=C2=A0=C2=
=A0=C2=A0 0001:<br>=C2=A0*** 0002:do_rootfs(d)<br>=C2=A0=C2=A0=C2=A0=C2=A0 =
0003:<br>File: &#39;/home/manu/poky/meta/classes/image.bbclass&#39;, lineno=
: 258, function: do_rootfs<br>=C2=A0=C2=A0=C2=A0=C2=A0 0254:=C2=A0=C2=A0=C2=
=A0 progress_reporter.next_stage()<br>=C2=A0=C2=A0=C2=A0=C2=A0 0255:<br>=C2=
=A0=C2=A0=C2=A0=C2=A0 0256:=C2=A0=C2=A0=C2=A0 # generate rootfs<br>=C2=A0=
=C2=A0=C2=A0=C2=A0 0257:=C2=A0=C2=A0=C2=A0 d.setVarFlag(&#39;REPRODUCIBLE_T=
IMESTAMP_ROOTFS&#39;, &#39;export&#39;, &#39;1&#39;)<br>=C2=A0*** 0258:=C2=
=A0=C2=A0=C2=A0 create_rootfs(d, progress_reporter=3Dprogress_reporter, log=
catcher=3Dlogcatcher)<br>=C2=A0=C2=A0=C2=A0=C2=A0 0259:<br>=C2=A0=C2=A0=C2=
=A0=C2=A0 0260:=C2=A0=C2=A0=C2=A0 progress_reporter.finish()<br>=C2=A0=C2=
=A0=C2=A0=C2=A0 0261:}<br>=C2=A0=C2=A0=C2=A0=C2=A0 0262:do_rootfs[dirs] =3D=
 &quot;${TOPDIR}&quot;<br>File: &#39;/home/manu/poky/meta/lib/oe/rootfs.py&=
#39;, lineno: 1010, function: create_rootfs<br>=C2=A0=C2=A0=C2=A0=C2=A0 100=
6:=C2=A0=C2=A0=C2=A0 env_bkp =3D os.environ.copy()<br>=C2=A0=C2=A0=C2=A0=C2=
=A0 1007:<br>=C2=A0=C2=A0=C2=A0=C2=A0 1008:=C2=A0=C2=A0=C2=A0 img_type =3D =
d.getVar(&#39;IMAGE_PKGTYPE&#39;)<br>=C2=A0=C2=A0=C2=A0=C2=A0 1009:=C2=A0=
=C2=A0=C2=A0 if img_type =3D=3D &quot;rpm&quot;:<br>=C2=A0*** 1010:=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RpmRootfs(d, manifest_dir, progress_re=
porter, logcatcher).create()<br>=C2=A0=C2=A0=C2=A0=C2=A0 1011:=C2=A0=C2=A0=
=C2=A0 elif img_type =3D=3D &quot;ipk&quot;:<br>=C2=A0=C2=A0=C2=A0=C2=A0 10=
12:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 OpkgRootfs(d, manifest_dir, p=
rogress_reporter, logcatcher).create()<br>=C2=A0=C2=A0=C2=A0=C2=A0 1013:=C2=
=A0=C2=A0=C2=A0 elif img_type =3D=3D &quot;deb&quot;:<br>=C2=A0=C2=A0=C2=A0=
=C2=A0 1014:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 DpkgRootfs(d, manife=
st_dir, progress_reporter, logcatcher).create()<br>File: &#39;/home/manu/po=
ky/meta/lib/oe/rootfs.py&#39;, lineno: 201, function: create<br>=C2=A0=C2=
=A0=C2=A0=C2=A0 0197:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if self.pro=
gress_reporter:<br>=C2=A0=C2=A0=C2=A0=C2=A0 0198:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.progress_reporter.next_stag=
e()<br>=C2=A0=C2=A0=C2=A0=C2=A0 0199:<br>=C2=A0=C2=A0=C2=A0=C2=A0 0200:=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # call the package manager dependen=
t create method<br>=C2=A0*** 0201:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 self._create()<br>=C2=A0=C2=A0=C2=A0=C2=A0 0202:<br>=C2=A0=C2=A0=C2=A0=
=C2=A0 0203:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sysconfdir =3D self.=
image_rootfs + self.d.getVar(&#39;sysconfdir&#39;)<br>=C2=A0=C2=A0=C2=A0=C2=
=A0 0204:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bb.utils.mkdirhier(sysc=
onfdir)<br>=C2=A0=C2=A0=C2=A0=C2=A0 0205:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 with open(sysconfdir + &quot;/version&quot;, &quot;w+&quot;) as v=
er:<br>File: &#39;/home/manu/poky/meta/lib/oe/rootfs.py&#39;, lineno: 450, =
function: _create<br>=C2=A0=C2=A0=C2=A0=C2=A0 0446:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 rpm_pre_process_cmds =3D self.d.getVar(&#39;RPM_PREPROCE=
SS_COMMANDS&#39;)<br>=C2=A0=C2=A0=C2=A0=C2=A0 0447:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 rpm_post_process_cmds =3D self.d.getVar(&#39;RPM_POSTPRO=
CESS_COMMANDS&#39;)<br>=C2=A0=C2=A0=C2=A0=C2=A0 0448:<br>=C2=A0=C2=A0=C2=A0=
=C2=A0 0449:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # update PM index fi=
les<br>=C2=A0*** 0450:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.pm.wr=
ite_index()<br>=C2=A0=C2=A0=C2=A0=C2=A0 0451:<br>=C2=A0=C2=A0=C2=A0=C2=A0 0=
452:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 execute_pre_post_process(sel=
f.d, rpm_pre_process_cmds)<br>=C2=A0=C2=A0=C2=A0=C2=A0 0453:<br>=C2=A0=C2=
=A0=C2=A0=C2=A0 0454:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if self.pro=
gress_reporter:<br>File: &#39;/home/manu/poky/meta/lib/oe/package_manager.p=
y&#39;, lineno: 543, function: write_index<br>=C2=A0=C2=A0=C2=A0=C2=A0 0539=
:<br>=C2=A0=C2=A0=C2=A0=C2=A0 0540:=C2=A0=C2=A0=C2=A0 def write_index(self)=
:<br>=C2=A0=C2=A0=C2=A0=C2=A0 0541:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 lockfilename =3D self.d.getVar(&#39;DEPLOY_DIR_RPM&#39;) + &quot;/rpm.l=
ock&quot;<br>=C2=A0=C2=A0=C2=A0=C2=A0 0542:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 lf =3D bb.utils.lockfile(lockfilename, False)<br>=C2=A0*** 054=
3:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RpmIndexer(self.d, self.rpm_re=
po_dir).write_index()<br>=C2=A0=C2=A0=C2=A0=C2=A0 0544:=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 bb.utils.unlockfile(lf)<br>=C2=A0=C2=A0=C2=A0=C2=
=A0 0545:<br>=C2=A0=C2=A0=C2=A0=C2=A0 0546:=C2=A0=C2=A0=C2=A0 def insert_fe=
eds_uris(self, feed_uris, feed_base_paths, feed_archs):<br>=C2=A0=C2=A0=C2=
=A0=C2=A0 0547:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from urllib.parse=
 import urlparse<br>File: &#39;/home/manu/poky/meta/lib/oe/package_manager.=
py&#39;, lineno: 105, function: write_index<br>=C2=A0=C2=A0=C2=A0=C2=A0 010=
1:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else:<br>=C2=A0=C2=A0=C2=A0=C2=
=A0 0102:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 signer =3D None<br>=C2=A0=C2=A0=C2=A0=C2=A0 0103:<br>=C2=A0=C2=A0=C2=A0=C2=
=A0 0104:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 createrepo_c =3D bb.uti=
ls.which(os.environ[&#39;PATH&#39;], &quot;createrepo_c&quot;)<br>=C2=A0***=
 0105:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 result =3D create_index(&q=
uot;%s --update -q %s&quot; % (createrepo_c, self.deploy_dir))<br>=C2=A0=C2=
=A0=C2=A0=C2=A0 0106:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if result:<=
br>=C2=A0=C2=A0=C2=A0=C2=A0 0107:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 bb.fatal(result)<br>=C2=A0=C2=A0=C2=A0=C2=A0 0108:=
<br>=C2=A0=C2=A0=C2=A0=C2=A0 0109:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 # Sign repomd<br>File: &#39;/home/manu/poky/meta/lib/oe/package_manager=
.py&#39;, lineno: 21, function: create_index<br>=C2=A0=C2=A0=C2=A0=C2=A0 00=
17:def create_index(arg):<br>=C2=A0=C2=A0=C2=A0=C2=A0 0018:=C2=A0=C2=A0=C2=
=A0 index_cmd =3D arg<br>=C2=A0=C2=A0=C2=A0=C2=A0 0019:<br>=C2=A0=C2=A0=C2=
=A0=C2=A0 0020:=C2=A0=C2=A0=C2=A0 bb.note(&quot;Executing &#39;%s&#39; ...&=
quot; % index_cmd)<br>=C2=A0*** 0021:=C2=A0=C2=A0=C2=A0 result =3D subproce=
ss.check_output(index_cmd, stderr=3Dsubprocess.STDOUT, shell=3DTrue).decode=
(&quot;utf-8&quot;)<br>=C2=A0=C2=A0=C2=A0=C2=A0 0022:=C2=A0=C2=A0=C2=A0 if =
result:<br>=C2=A0=C2=A0=C2=A0=C2=A0 0023:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 bb.note(result)<br>=C2=A0=C2=A0=C2=A0=C2=A0 0024:<br>=C2=A0=C2=A0=
=C2=A0=C2=A0 0025:&quot;&quot;&quot;<br>File: &#39;/usr/lib/python3.5/subpr=
ocess.py&#39;, lineno: 626, function: check_output<br>=C2=A0=C2=A0=C2=A0=C2=
=A0 0622:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # empty string. That is=
 maintained here for backwards compatibility.<br>=C2=A0=C2=A0=C2=A0=C2=A0 0=
623:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 kwargs[&#39;input&#39;] =3D =
&#39;&#39; if kwargs.get(&#39;universal_newlines&#39;, False) else b&#39;&#=
39;<br>=C2=A0=C2=A0=C2=A0=C2=A0 0624:<br>=C2=A0=C2=A0=C2=A0=C2=A0 0625:=C2=
=A0=C2=A0=C2=A0 return run(*popenargs, stdout=3DPIPE, timeout=3Dtimeout, ch=
eck=3DTrue,<br>=C2=A0*** 0626:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 **kwargs).stdout<br>=C2=A0=C2=A0=C2=
=A0=C2=A0 0627:<br>=C2=A0=C2=A0=C2=A0=C2=A0 0628:<br>=C2=A0=C2=A0=C2=A0=C2=
=A0 0629:class CompletedProcess(object):<br>=C2=A0=C2=A0=C2=A0=C2=A0 0630:=
=C2=A0=C2=A0=C2=A0 &quot;&quot;&quot;A process that has finished running.<b=
r>File: &#39;/usr/lib/python3.5/subprocess.py&#39;, lineno: 708, function: =
run<br>=C2=A0=C2=A0=C2=A0=C2=A0 0704:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 raise<br>=C2=A0=C2=A0=C2=A0=C2=A0 0705:=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 retcode =3D process.poll()<br>=C2=
=A0=C2=A0=C2=A0=C2=A0 0706:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if ch=
eck and retcode:<br>=C2=A0=C2=A0=C2=A0=C2=A0 0707:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 raise CalledProcessError(retcode=
, process.args,<br>=C2=A0*** 0708:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 output=3Dstdout, stderr=3Dstderr)<br>=C2=A0=C2=
=A0=C2=A0=C2=A0 0709:=C2=A0=C2=A0=C2=A0 return CompletedProcess(process.arg=
s, retcode, stdout, stderr)<br>=C2=A0=C2=A0=C2=A0=C2=A0 0710:<br>=C2=A0=C2=
=A0=C2=A0=C2=A0 0711:<br>=C2=A0=C2=A0=C2=A0=C2=A0 0712:def list2cmdline(seq=
):<br>Exception: subprocess.CalledProcessError: Command &#39;/home/manu/pok=
y/build/tmp/work/qemux86_64-poky-linux/core-image-sato/1.0-r0/recipe-sysroo=
t-native/usr/bin/createrepo_c --update -q /home/manu/poky/build/tmp/work/qe=
mux86_64-poky-linux/core-image-sato/1.0-r0/oe-rootfs-repo&#39; returned non=
-zero exit status 1<br><br>Subprocess output:<br>Temporary repodata directo=
ry /home/manu/poky/build/tmp/work/qemux86_64-poky-linux/core-image-sato/1.0=
-r0/oe-rootfs-repo/.repodata/ already exists! (Another createrepo process i=
s running?)<br><br>ERROR: core-image-sato-1.0-r0 do_rootfs: Function failed=
: do_rootfs<br>ERROR: Logfile of failure stored in: /home/manu/poky/build/t=
mp/work/qemux86_64-poky-linux/core-image-sato/1.0-r0/temp/log.do_rootfs.349=
4<br>ERROR: Task (/home/manu/poky/meta/recipes-sato/images/core-image-sato.=
bb:do_rootfs) failed with exit code &#39;1&#39;</span></div><div class=3D"g=
mail_default" style=3D"color:rgb(61,133,198)"><br></div></div><div class=3D=
"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Mar 16, 2018 at 10:00 =
PM,  <span dir=3D"ltr">&lt;<a href=3D"mailto:poky-request@yoctoproject.org"=
 target=3D"_blank">poky-request@yoctoproject.org</a>&gt;</span> wrote:<br><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex">Send poky mailing list submissions to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:poky@yoctoproject.org">poky@y=
octoproject.org</a><br>
<br>
To subscribe or unsubscribe via the World Wide Web, visit<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"https://lists.yoctoproject.org/listi=
nfo/poky" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.<=
wbr>org/listinfo/poky</a><br>
or, via email, send a message with subject or body &#39;help&#39; to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:poky-request@yoctoproject.org=
">poky-request@yoctoproject.org</a><br>
<br>
You can reach the person managing the list at<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:poky-owner@yoctoproject.org">=
poky-owner@yoctoproject.org</a><br>
<br>
When replying, please edit your Subject line so it is more specific<br>
than &quot;Re: Contents of poky digest...&quot;<br>
<br>
<br>
Today&#39;s Topics:<br>
<br>
=C2=A0 =C2=A01. Re: Poky Build Error (Burton, Ross)<br>
<br>
<br>
------------------------------<wbr>------------------------------<wbr>-----=
-----<br>
<br>
Message: 1<br>
Date: Fri, 16 Mar 2018 15:35:41 +0000<br>
From: &quot;Burton, Ross&quot; &lt;<a href=3D"mailto:ross.burton@intel.com"=
>ross.burton@intel.com</a>&gt;<br>
To: Manu Mathen &lt;<a href=3D"mailto:manumathens@gmail.com">manumathens@gm=
ail.com</a>&gt;<br>
Cc: Poky Project &lt;<a href=3D"mailto:poky@yoctoproject.org">poky@yoctopro=
ject.org</a>&gt;<br>
Subject: Re: [poky] Poky Build Error<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:CAJTo0LZDXi%2B-XM2SGpB2k0=
ezgPpMNkbxe7HRm6Rd17YjJ9eQUA@mail.gmail.com">CAJTo0LZDXi+-<wbr>XM2SGpB2k0ez=
gPpMNkbxe7HRm6Rd17<wbr>YjJ9eQUA@mail.gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
If the computer is restarting then that&#39;s obviously nothing to do with<=
br>
bitbake/yocto itself, but your computer can&#39;t handle the stress that a =
full<br>
build is causing.<br>
<br>
Usual culprits are badly installed or failing RAM (run memtest), or<br>
insufficient ventilation causing a thermal shutdown.<br>
<br>
Ross<br>
<br>
On 16 March 2018 at 11:08, Manu Mathen &lt;<a href=3D"mailto:manumathens@gm=
ail.com">manumathens@gmail.com</a>&gt; wrote:<br>
<br>
&gt; Hi. Hope your doing well. I&#39;ve been trying to build poky on Ubuntu=
 16.04.<br>
&gt; I&#39;ve set up the required files from the quick start guide 2.4.2. T=
he build<br>
&gt; has reached about 70%, but ever since it got to about 50%, the compute=
r<br>
&gt; keeps restarting during the build. Since this happened, I tried do do =
a<br>
&gt; clean install of Ubuntu and start over, but it&#39;s been the same. Th=
e build<br>
&gt; progresses with the restarts from where it stopped, but I get an error=
<br>
&gt; later in the build and can&#39;t proceed. This is what I noticed from =
the<br>
&gt; cookerdaemon.log file, these lines keep repeating before the restart<b=
r>
&gt; happens, or these are the last lines logged before I start the build a=
gain<br>
&gt; .<br>
&gt;<br>
&gt;<br>
&gt; Running command [&#39;getVariable&#39;, &#39;BB_DEFAULT_TASK&#39;]<br>
&gt; Running command [&#39;setConfig&#39;, &#39;cmd&#39;, &#39;build&#39;]<=
br>
&gt; Running command [&#39;buildTargets&#39;, [&#39;core-image-sato&#39;], =
&#39;build&#39;]<br>
&gt; Connecting Client<br>
&gt; Disconnecting Client<br>
&gt; No timeout, exiting.<br>
&gt;<br>
&gt; I have attached the log file below too, has anyone experienced this be=
fore<br>
&gt; or know what&#39;s wrong. Thank you in advance.<br>
&gt;<br>
&gt; Manu Mathen<br>
&gt;<br>
&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; poky mailing list<br>
&gt; <a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"norefe=
rrer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/poky</=
a><br>
&gt;<br>
&gt;<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/poky/attachment=
s/20180316/def526d6/attachment-0001.html" rel=3D"noreferrer" target=3D"_bla=
nk">http://lists.yoctoproject.<wbr>org/pipermail/poky/<wbr>attachments/2018=
0316/def526d6/<wbr>attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
______________________________<wbr>_________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/poky</a><br=
>
<br>
<br>
End of poky Digest, Vol 90, Issue 5<br>
******************************<wbr>*****<br>
</font></span></blockquote></div><br></div>

--94eb2c0c2934bd972c05679bf30e--
