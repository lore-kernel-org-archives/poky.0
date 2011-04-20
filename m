Return-Path: <aalonso00@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id F1EA44C80581;
	Wed, 20 Apr 2011 12:20:48 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwd20 with SMTP id 20so1120777wwd.11
	for <multiple recipients>; Wed, 20 Apr 2011 10:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=WjO4rCb2YUrNI+fb0GajaNGt+IEBVuisGTxWNwOkA8s=;
	b=jfO4hBh5kcVF17FPHIMQxcSKRYZN5kBQCHYYvQHAEH9X5ZQiOW7ciBZd52Vt19ewRU
	gt2aAOpNaCCry0pDRHpo8xHT86PTEapsJaaR6Vnj4n1C0A4ug2B8Toa4llSAq4FUYeE+
	L2PKFNiNwSxhU0mg8WYPklPBc9UUdA6eZaojI=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=Bx1OQolcu3ol0AnCB6fmsWVLGwtNWPBNRd5UjwWk9SImwCcL8+7z1+6kTkUte7bnJh
	NuaVy4DfebbpXTQs5g+4bi6dqBE37qhzstxZcqD2MoitL7uGBBvPFhxzlntJvtsbhUkE
	NqMFYaXzDNeuxYbsAjktNihornzKOCs7FjqDo=
MIME-Version: 1.0
Received: by 10.216.239.71 with SMTP id b49mr7295000wer.107.1303320042181;
	Wed, 20 Apr 2011 10:20:42 -0700 (PDT)
Received: by 10.216.26.133 with HTTP; Wed, 20 Apr 2011 10:20:42 -0700 (PDT)
In-Reply-To: <DE8BA75F34A0404282AC5E15F691BC76512BEFF6@orsmsx504.amr.corp.intel.com>
References: <1300408987.30423.2172.camel@rex>
	<4DAF0DB2.5080004@linux.intel.com>
	<DE8BA75F34A0404282AC5E15F691BC76512BEFF6@orsmsx504.amr.corp.intel.com>
Date: Wed, 20 Apr 2011 12:20:42 -0500
Message-ID: <BANLkTinWqqqMpSu3x+=eRF-e2AuKE7Qo6A@mail.gmail.com>
From: Adrian Alonso <aalonso00@gmail.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Cc: yocto <yocto@yoctoproject.org>, Darren Hart <dvhart@linux.intel.com>,
	poky <poky@yoctoproject.org>
Subject: Re: Shared State - What does it mean and why should I care?
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
X-List-Received-Date: Wed, 20 Apr 2011 17:20:49 -0000
Content-Type: multipart/alternative; boundary=e0cb4e43d309249ad504a15cd815

--e0cb4e43d309249ad504a15cd815
Content-Type: text/plain; charset=ISO-8859-1

Specially the part that end user should care

Howto to set local packages repositories and to share the sstate data stuff
to speed builds.

On Wed, Apr 20, 2011 at 11:58 AM, Rifenbark, Scott M <
scott.m.rifenbark@intel.com> wrote:

> Sstate should get integrated into our documentation somewhere.
>
> ScottR
>
> -----Original Message-----
> From: Darren Hart [mailto:dvhart@linux.intel.com]
> Sent: Wednesday, April 20, 2011 9:46 AM
> To: Richard Purdie
> Cc: yocto; poky; Rifenbark, Scott M
> Subject: Re: [poky] Shared State - What does it mean and why should I care?
>
> Thanks for the write-up RP. Do we plan to integrate this with the
> reference manual? Perhaps something on the wiki until this is all a bit
> more final and then move it into the ref manual?
>
> --
> Darren
>
> On 03/17/2011 05:43 PM, Richard Purdie wrote:
> > One of the biggest attractions but also one of the biggest problems with
> > the OpenEmbedded architecture has always been the grounding in the build
> > from scratch approach. From one side this is a great advantage and its
> > something many systems struggle with. The downside is that it also means
> > people spend a lot of time rebuilding things from scratch and this is
> > the default approach people take whenever they hit problems.
> >
> > For a long time we've wanted to find ways to do this better and have
> > better incremental build support. It can be split into some related
> > problems:
> >
> > a) How do we work out which pieces of the system have not changed and
> > which have changed?
> > b) How do we then remove and replace the pieces that have changed?
> > c) How do we use prebuilt components that don't need to be built from
> > scratch if they're available?
> >
> > We now have answers to the questions:
> >
> > a) We detect changes in the "inputs" to a given task by creating a
> > checksum/signature of those inputs. If the checksum/signature changes,
> > the inputs changed and we need to rerun it.
> > b) The shared state (sstate) code tracks which tasks added which output
> > to the build process. This means the output from a given task can be
> > removed/upgraded or otherwise manipulated.
> > c) This question is also addressed partly by b) assuming we can fetch
> > the sstate objects from remote locations and install them if they're
> > deemed to be valid.
> >
> > I'm now proud to announce that we have all these pieces in place and
> > working. Its not a simple problem and I'm not going to claim its all bug
> > free but the architecture is there, we've tested it and fixed many of
> > the problems. This is by far the most complete and robust answer to the
> > above questions we've ever had, replacing ideas like the several
> > versions of packaged-staging that predate this.
> >
> > Since its new, this subject is lacking in documentation and I'd
> > therefore like to dive into some of the technical details so these have
> > at least been covered somewhere. I'm going to tell this partly as a
> > story of how we've arrived at the design we have today. Over time we can
> > expand this and include the data in the manuals etc.
> >
> > Overall Architecture
> > ====================
> >
> > Firstly, we've made a decision to make all this work on a per-task
> > basis. In previous versions of packaged-staging we did this on a per
> > recipe basis but this didn't work well. Why? Imagine you have the ipk
> > packaging backend enabled and you switch to deb. Your do_install and
> > do_package output is still valid but a per recipe approach wouldn't
> > include the .deb files so you'd have to invalidate the whole thing and
> > re-run it. This is suboptimal. You also end up having to teach the core
> > an awful lot of knowledge about specific tasks. This doesn't scale well
> > and doesn't allow users to add new tasks easily in layers or external
> > recipes without touching the packaged-staging core.
> >
> > Checksums/Signatures
> > ====================
> >
> > So we need to detect all the inputs to a given task. For shell tasks
> > this turns out to be fairly easily as we generate the "run" shell script
> > for each task and its possible to checksum that and have a good idea of
> > when the data going into a task changes.
> >
> > To complicate the problem, there are things we don't want to include in
> > the checksum. Firstly, there is the actual specific build path of a
> > given task (its WORKDIR). We don't really mind if that changes as that
> > shouldn't affect the output for target packages and we also have the
> > objective of making native/cross packages relocatable. We therefore need
> > to exclude WORKDIR. The simplistic approach is therefore to set WORKDIR
> > to some fixed value and checksum that "run" script. The next problem is
> > the "run" scripts were rather full of functions that may or may not get
> > called. Chris Larson added code which allowed us to figure out
> > dependencies between shell functions and we use this to prune the "run"
> > scripts down to the minimum set, thereby alleviating this problem and
> > making the "run" scripts much more readable as an added bonus.
> >
> > So we have something that would work for shell, what about python tasks?
> > These are harder but the same approach applies, we needed to figure out
> > what variables a python function accesses and what functions it calls.
> > Again, Chris Larson came up with some code for this and this is exactly
> > what we do, figure out the variable and function dependencies, then
> > checksum the data that goes as an input to the task.
> >
> > Like the WORKDIR case, there are some cases where we do explicitly want
> > to ignore a dependency as we know better than bitbake. This can be done
> > with a line like:
> >
> > PACKAGE_ARCHS[vardepsexclude] = "MACHINE"
> >
> > which would ensure that the PACKAGE_ARCHS variable does not depend on
> > the value of MACHINE, even if it does reference it.
> >
> > Equally, there are some cases where we need to add in dependencies
> > bitbake isn't able to find which can be done as:
> >
> > PACKAGE_ARCHS[vardeps] = "MACHINE"
> >
> > which would explicitly add the MACHINE variable as a dependency for
> > PACKAGE_ARCHS. There are some cases with inline python for example where
> > bitbake isn't able to figure out the dependencies. When running in debug
> > mode (-DDD), bitbake does output information when it sees something it
> > can't figure out the dependencies within. We currently have not managed
> > to cover those dependencies in detail and this is something we know we
> > need to fix.
> >
> > This covers the direct inputs into a task well but there is then the
> > question of the indirect inputs, the things that were already built and
> > present in the build directory. The information so far is referred to as
> > the "basehash" in the code, we then need to add the hashes of all the
> > tasks this task depends upon. Choosing which dependencies to add is a
> > policy decision but the effect is to generate a master
> > checksum/signature which combines the basehash and the hashes of the
> > dependencies.
> >
> > Figuring out the dependencies and these signatures/checksums is great,
> > what do we then do with the checksum information? We've introduced the
> > notion of a signature handler into bitbake which is responsibility for
> > processing this information. By default there is a dummy "noop"
> > signature handler enabled in bitbake so behaviour is unchanged from
> > previous versions. OECore uses the "basic" signature hander by setting:
> >
> > BB_SIGNATURE_HANDLER ?= "basic"
> >
> > in bitbake.conf. At the same point we also give bitbake some extra
> > information to help it handle this information:
> >
> > BB_HASHBASE_WHITELIST ?= "TMPDIR FILE PATH PWD BB_TASKHASH BBPATH DL_DIR
> SSTATE_DIR THISDIR FILESEXTRAPATHS FILE_DIRNAME HOME LOGNAME SHELL TERM USER
> FILESPATH USERNAME STAGING_DIR_HOST STAGING_DIR_TARGET"
> > BB_HASHTASK_WHITELIST ?=
> "(.*-cross$|.*-native$|.*-cross-initial$|.*-cross-intermediate$|^virtual:native:.*|^virtual:nativesdk:.*)"
> >
> > The BB_HASHBASE_WHITELIST is effectively a list of global
> > vardepsexclude, those variables are never included in any checksum. This
> > is actually where we exclude WORKDIR since WORKDIR is constructed as a
> > path within TMPDIR and we whitelist TMPDIR.
> >
> > The BB_HASHTASK_WHITELIST covers dependent tasks and excludes certain
> > kinds of tasks from the dependency chains. The effect of the example
> > above is to isolate the native, target and cross components, so for
> > example, toolchain changes don't force a rebuild of the whole system.
> >
> > The end result of the "basic" handler is to make some dependency and
> > hash information available to the build. This includes:
> >
> > BB_BASEHASH_task-<taskname> - the base hashes for each task in the recipe
> > BB_BASEHASH_<filename:taskname> - the base hashes for each dependent task
> > BBHASHDEPS_<filename:taskname> - The task dependencies for each task
> > BB_TASKHASH - the hash of the currently running task
> >
> > There is also a "basichash" BB_SIGNATURE_HANDLER which is the same as
> > the basic version but adds the task hash to the stamp files. This has
> > the result that any metadata change that changes the task hash,
> > automatically causes the task to rerun. This removes the need to bump PR
> > values and changes to metadata automatically ripple across the build.
> > This isn't the default but its likely we'll do that in future and all
> > the functionality exists. The reason for delaying is the potential
> > impact to distribution feed creation as they need increasing PR fields
> > and we lack a mechanism to automate that yet. Its not a hard problem to
> > fix though.
> >
> > Shared State
> > ============
> >
> > I've talked a lot about part a) of the problem above and how we detect
> > changes to the tasks. This solves half the problem, the other half is
> > using this information at the build level and being able to reuse or
> > rebuild specific components.
> >
> > The sstate class is a relatively generic implementation of how to
> > "capture" a snapshot of a given task. The idea is that from the build
> > point of view we should never need to care where this output came from,
> > it could be freshly built, it could be downloaded and unpacked from
> > somewhere, we should never need to care.
> >
> > There are two classes of output, one is just about creating a directory
> > in WORKDIR, e.g. the output of do_install or do_package. The other is
> > where a set of data is merged into a shared directory tree such as the
> > sysroot.
> >
> > We've tried to keep the gory details of the implementation hidden in the
> > sstate class. From a user perspective, adding sstate wrapping to a task
> > is as simple as this do_deploy example taken from do_deploy.bbclass:
> >
> > DEPLOYDIR = "${WORKDIR}/deploy-${PN}"
> > SSTATETASKS += "do_deploy"
> > do_deploy[sstate-name] = "deploy"
> > do_deploy[sstate-inputdirs] = "${DEPLOYDIR}"
> > do_deploy[sstate-outputdirs] = "${DEPLOY_DIR_IMAGE}"
> >
> > python do_deploy_setscene () {
> >     sstate_setscene(d)
> > }
> > addtask do_deploy_setscene
> >
> > Here, we add some extra flags to the task, a name field ("deploy"), an
> > input directory which is where the task outputs data to, the output
> > directory which is where the data from the task should be eventually be
> > copied to. We also add a _setscene variant of the task and add the task
> > name to the SSTATETASKS list.
> >
> > If there was a directory you just need to ensure has its contents
> > preserved, this can be done with a line like:
> >
> > do_package[sstate-plaindirs] = "${PKGD} ${PKGDEST}"
> >
> > Its also worth highlighting mutliple directories can be handled as above
> > or as in the following input/output example:
> >
> > do_package[sstate-inputdirs] = "${PKGDESTWORK} ${SHLIBSWORKDIR}"
> > do_package[sstate-outputdirs] = "${PKGDATA_DIR} ${SHLIBSDIR}"
> > do_package[sstate-lockfile] = "${PACKAGELOCK}"
> >
> > This also includes the ability to take a lockfile when manipulating
> > sstate directory structures since some cases are sensitive to file
> > additions/removals.
> >
> > Behind the scenes, the sstate code works by looking in SSTATE_DIR and
> > also at any SSTATE_MIRRORS for sstate files. An example of a local file
> > url sstate mirror is:
> >
> > SSTATE_MIRRORS ?= "\
> > file://.* http://someserver.tld/share/sstate/ \n \
> > file://.* file:///some/local/dir/sstate/"
> >
> > although any standard PREMIRROR/MIRROR syntax can be used for example
> > with http:// urls.
> >
> > The sstate package validity can be detected just by looking at the
> > filename since the filename contains the task checksum/signature as
> > detailed above. If a valid sstate package is found, it will be
> > downloaded and used to accelerate the task.
> >
> > The task acceleration phase is what the *_setscene tasks are used for.
> > Bitbake goes through this phase before the main execution code and tries
> > to accelerate any tasks it can find sstate packages for. If a sstate
> > package for a task is available, the sstate package will be used, that
> > task will not be run and importantly, any dependencies that task will
> > also not be executed.
> >
> > As a real world example, the aim is when building an ipk based image,
> > only the do_package_write_ipk tasks would have their sstate packages
> > fetched and extracted. Since the sysroot isn't used, it would never get
> > extracted. This is another reason to prefer the task based approach
> > sstate takes over any recipe based approach which would have to install
> > the output from every task.
> >
> > Tips and Tricks
> > ===============
> >
> > This isn't simple code and when it goes wrong, debugging needs to be
> > straightforward. During development we tried to write strong debugging
> > tools too.
> >
> > Firstly, whenever a sstate package is written out, so is a
> > corresponding .siginfo file. This is a pickled python database of all
> > the metadata that went into creating the hash for a given sstate
> > package.
> >
> > If bitbake is run with the --dump-signatures (or -S) option, instead of
> > building the target package specified it will dump out siginfo files in
> > the stamp directory for every task it would have executed.
> >
> > Finally, there is a bitbake-diffsigs command which can process these
> > siginfo files. If one file is specified, it will dump out the dependency
> > information in the file. If two files are specified, it will compare the
> > two files and dump out the differences between the two.
> >
> > This allows the question of "What changed between X and Y?" to be
> > answered easily.
> >
> >
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
>
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



-- 
Saludos
Adrian Alonso
http://aalonso.wordpress.com

--e0cb4e43d309249ad504a15cd815
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Specially the part that end user should care<div><br></div><div>Howto to se=
t local packages repositories and to share the sstate data stuff to speed b=
uilds.<br><br><div class=3D"gmail_quote">On Wed, Apr 20, 2011 at 11:58 AM, =
Rifenbark, Scott M <span dir=3D"ltr">&lt;<a href=3D"mailto:scott.m.rifenbar=
k@intel.com">scott.m.rifenbark@intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;">Sstate should get integrated into our docum=
entation somewhere.<br>
<br>
ScottR<br>
<div><div></div><div class=3D"h5"><br>
-----Original Message-----<br>
From: Darren Hart [mailto:<a href=3D"mailto:dvhart@linux.intel.com">dvhart@=
linux.intel.com</a>]<br>
Sent: Wednesday, April 20, 2011 9:46 AM<br>
To: Richard Purdie<br>
Cc: yocto; poky; Rifenbark, Scott M<br>
Subject: Re: [poky] Shared State - What does it mean and why should I care?=
<br>
<br>
Thanks for the write-up RP. Do we plan to integrate this with the<br>
reference manual? Perhaps something on the wiki until this is all a bit<br>
more final and then move it into the ref manual?<br>
<br>
--<br>
Darren<br>
<br>
On 03/17/2011 05:43 PM, Richard Purdie wrote:<br>
&gt; One of the biggest attractions but also one of the biggest problems wi=
th<br>
&gt; the OpenEmbedded architecture has always been the grounding in the bui=
ld<br>
&gt; from scratch approach. From one side this is a great advantage and its=
<br>
&gt; something many systems struggle with. The downside is that it also mea=
ns<br>
&gt; people spend a lot of time rebuilding things from scratch and this is<=
br>
&gt; the default approach people take whenever they hit problems.<br>
&gt;<br>
&gt; For a long time we&#39;ve wanted to find ways to do this better and ha=
ve<br>
&gt; better incremental build support. It can be split into some related<br=
>
&gt; problems:<br>
&gt;<br>
&gt; a) How do we work out which pieces of the system have not changed and<=
br>
&gt; which have changed?<br>
&gt; b) How do we then remove and replace the pieces that have changed?<br>
&gt; c) How do we use prebuilt components that don&#39;t need to be built f=
rom<br>
&gt; scratch if they&#39;re available?<br>
&gt;<br>
&gt; We now have answers to the questions:<br>
&gt;<br>
&gt; a) We detect changes in the &quot;inputs&quot; to a given task by crea=
ting a<br>
&gt; checksum/signature of those inputs. If the checksum/signature changes,=
<br>
&gt; the inputs changed and we need to rerun it.<br>
&gt; b) The shared state (sstate) code tracks which tasks added which outpu=
t<br>
&gt; to the build process. This means the output from a given task can be<b=
r>
&gt; removed/upgraded or otherwise manipulated.<br>
&gt; c) This question is also addressed partly by b) assuming we can fetch<=
br>
&gt; the sstate objects from remote locations and install them if they&#39;=
re<br>
&gt; deemed to be valid.<br>
&gt;<br>
&gt; I&#39;m now proud to announce that we have all these pieces in place a=
nd<br>
&gt; working. Its not a simple problem and I&#39;m not going to claim its a=
ll bug<br>
&gt; free but the architecture is there, we&#39;ve tested it and fixed many=
 of<br>
&gt; the problems. This is by far the most complete and robust answer to th=
e<br>
&gt; above questions we&#39;ve ever had, replacing ideas like the several<b=
r>
&gt; versions of packaged-staging that predate this.<br>
&gt;<br>
&gt; Since its new, this subject is lacking in documentation and I&#39;d<br=
>
&gt; therefore like to dive into some of the technical details so these hav=
e<br>
&gt; at least been covered somewhere. I&#39;m going to tell this partly as =
a<br>
&gt; story of how we&#39;ve arrived at the design we have today. Over time =
we can<br>
&gt; expand this and include the data in the manuals etc.<br>
&gt;<br>
&gt; Overall Architecture<br>
&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;<br>
&gt; Firstly, we&#39;ve made a decision to make all this work on a per-task=
<br>
&gt; basis. In previous versions of packaged-staging we did this on a per<b=
r>
&gt; recipe basis but this didn&#39;t work well. Why? Imagine you have the =
ipk<br>
&gt; packaging backend enabled and you switch to deb. Your do_install and<b=
r>
&gt; do_package output is still valid but a per recipe approach wouldn&#39;=
t<br>
&gt; include the .deb files so you&#39;d have to invalidate the whole thing=
 and<br>
&gt; re-run it. This is suboptimal. You also end up having to teach the cor=
e<br>
&gt; an awful lot of knowledge about specific tasks. This doesn&#39;t scale=
 well<br>
&gt; and doesn&#39;t allow users to add new tasks easily in layers or exter=
nal<br>
&gt; recipes without touching the packaged-staging core.<br>
&gt;<br>
&gt; Checksums/Signatures<br>
&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;<br>
&gt; So we need to detect all the inputs to a given task. For shell tasks<b=
r>
&gt; this turns out to be fairly easily as we generate the &quot;run&quot; =
shell script<br>
&gt; for each task and its possible to checksum that and have a good idea o=
f<br>
&gt; when the data going into a task changes.<br>
&gt;<br>
&gt; To complicate the problem, there are things we don&#39;t want to inclu=
de in<br>
&gt; the checksum. Firstly, there is the actual specific build path of a<br=
>
&gt; given task (its WORKDIR). We don&#39;t really mind if that changes as =
that<br>
&gt; shouldn&#39;t affect the output for target packages and we also have t=
he<br>
&gt; objective of making native/cross packages relocatable. We therefore ne=
ed<br>
&gt; to exclude WORKDIR. The simplistic approach is therefore to set WORKDI=
R<br>
&gt; to some fixed value and checksum that &quot;run&quot; script. The next=
 problem is<br>
&gt; the &quot;run&quot; scripts were rather full of functions that may or =
may not get<br>
&gt; called. Chris Larson added code which allowed us to figure out<br>
&gt; dependencies between shell functions and we use this to prune the &quo=
t;run&quot;<br>
&gt; scripts down to the minimum set, thereby alleviating this problem and<=
br>
&gt; making the &quot;run&quot; scripts much more readable as an added bonu=
s.<br>
&gt;<br>
&gt; So we have something that would work for shell, what about python task=
s?<br>
&gt; These are harder but the same approach applies, we needed to figure ou=
t<br>
&gt; what variables a python function accesses and what functions it calls.=
<br>
&gt; Again, Chris Larson came up with some code for this and this is exactl=
y<br>
&gt; what we do, figure out the variable and function dependencies, then<br=
>
&gt; checksum the data that goes as an input to the task.<br>
&gt;<br>
&gt; Like the WORKDIR case, there are some cases where we do explicitly wan=
t<br>
&gt; to ignore a dependency as we know better than bitbake. This can be don=
e<br>
&gt; with a line like:<br>
&gt;<br>
&gt; PACKAGE_ARCHS[vardepsexclude] =3D &quot;MACHINE&quot;<br>
&gt;<br>
&gt; which would ensure that the PACKAGE_ARCHS variable does not depend on<=
br>
&gt; the value of MACHINE, even if it does reference it.<br>
&gt;<br>
&gt; Equally, there are some cases where we need to add in dependencies<br>
&gt; bitbake isn&#39;t able to find which can be done as:<br>
&gt;<br>
&gt; PACKAGE_ARCHS[vardeps] =3D &quot;MACHINE&quot;<br>
&gt;<br>
&gt; which would explicitly add the MACHINE variable as a dependency for<br=
>
&gt; PACKAGE_ARCHS. There are some cases with inline python for example whe=
re<br>
&gt; bitbake isn&#39;t able to figure out the dependencies. When running in=
 debug<br>
&gt; mode (-DDD), bitbake does output information when it sees something it=
<br>
&gt; can&#39;t figure out the dependencies within. We currently have not ma=
naged<br>
&gt; to cover those dependencies in detail and this is something we know we=
<br>
&gt; need to fix.<br>
&gt;<br>
&gt; This covers the direct inputs into a task well but there is then the<b=
r>
&gt; question of the indirect inputs, the things that were already built an=
d<br>
&gt; present in the build directory. The information so far is referred to =
as<br>
&gt; the &quot;basehash&quot; in the code, we then need to add the hashes o=
f all the<br>
&gt; tasks this task depends upon. Choosing which dependencies to add is a<=
br>
&gt; policy decision but the effect is to generate a master<br>
&gt; checksum/signature which combines the basehash and the hashes of the<b=
r>
&gt; dependencies.<br>
&gt;<br>
&gt; Figuring out the dependencies and these signatures/checksums is great,=
<br>
&gt; what do we then do with the checksum information? We&#39;ve introduced=
 the<br>
&gt; notion of a signature handler into bitbake which is responsibility for=
<br>
&gt; processing this information. By default there is a dummy &quot;noop&qu=
ot;<br>
&gt; signature handler enabled in bitbake so behaviour is unchanged from<br=
>
&gt; previous versions. OECore uses the &quot;basic&quot; signature hander =
by setting:<br>
&gt;<br>
&gt; BB_SIGNATURE_HANDLER ?=3D &quot;basic&quot;<br>
&gt;<br>
&gt; in bitbake.conf. At the same point we also give bitbake some extra<br>
&gt; information to help it handle this information:<br>
&gt;<br>
&gt; BB_HASHBASE_WHITELIST ?=3D &quot;TMPDIR FILE PATH PWD BB_TASKHASH BBPA=
TH DL_DIR SSTATE_DIR THISDIR FILESEXTRAPATHS FILE_DIRNAME HOME LOGNAME SHEL=
L TERM USER FILESPATH USERNAME STAGING_DIR_HOST STAGING_DIR_TARGET&quot;<br=
>

&gt; BB_HASHTASK_WHITELIST ?=3D &quot;(.*-cross$|.*-native$|.*-cross-initia=
l$|.*-cross-intermediate$|^virtual:native:.*|^virtual:nativesdk:.*)&quot;<b=
r>
&gt;<br>
&gt; The BB_HASHBASE_WHITELIST is effectively a list of global<br>
&gt; vardepsexclude, those variables are never included in any checksum. Th=
is<br>
&gt; is actually where we exclude WORKDIR since WORKDIR is constructed as a=
<br>
&gt; path within TMPDIR and we whitelist TMPDIR.<br>
&gt;<br>
&gt; The BB_HASHTASK_WHITELIST covers dependent tasks and excludes certain<=
br>
&gt; kinds of tasks from the dependency chains. The effect of the example<b=
r>
&gt; above is to isolate the native, target and cross components, so for<br=
>
&gt; example, toolchain changes don&#39;t force a rebuild of the whole syst=
em.<br>
&gt;<br>
&gt; The end result of the &quot;basic&quot; handler is to make some depend=
ency and<br>
&gt; hash information available to the build. This includes:<br>
&gt;<br>
&gt; BB_BASEHASH_task-&lt;taskname&gt; - the base hashes for each task in t=
he recipe<br>
&gt; BB_BASEHASH_&lt;filename:taskname&gt; - the base hashes for each depen=
dent task<br>
&gt; BBHASHDEPS_&lt;filename:taskname&gt; - The task dependencies for each =
task<br>
&gt; BB_TASKHASH - the hash of the currently running task<br>
&gt;<br>
&gt; There is also a &quot;basichash&quot; BB_SIGNATURE_HANDLER which is th=
e same as<br>
&gt; the basic version but adds the task hash to the stamp files. This has<=
br>
&gt; the result that any metadata change that changes the task hash,<br>
&gt; automatically causes the task to rerun. This removes the need to bump =
PR<br>
&gt; values and changes to metadata automatically ripple across the build.<=
br>
&gt; This isn&#39;t the default but its likely we&#39;ll do that in future =
and all<br>
&gt; the functionality exists. The reason for delaying is the potential<br>
&gt; impact to distribution feed creation as they need increasing PR fields=
<br>
&gt; and we lack a mechanism to automate that yet. Its not a hard problem t=
o<br>
&gt; fix though.<br>
&gt;<br>
&gt; Shared State<br>
&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;<br>
&gt; I&#39;ve talked a lot about part a) of the problem above and how we de=
tect<br>
&gt; changes to the tasks. This solves half the problem, the other half is<=
br>
&gt; using this information at the build level and being able to reuse or<b=
r>
&gt; rebuild specific components.<br>
&gt;<br>
&gt; The sstate class is a relatively generic implementation of how to<br>
&gt; &quot;capture&quot; a snapshot of a given task. The idea is that from =
the build<br>
&gt; point of view we should never need to care where this output came from=
,<br>
&gt; it could be freshly built, it could be downloaded and unpacked from<br=
>
&gt; somewhere, we should never need to care.<br>
&gt;<br>
&gt; There are two classes of output, one is just about creating a director=
y<br>
&gt; in WORKDIR, e.g. the output of do_install or do_package. The other is<=
br>
&gt; where a set of data is merged into a shared directory tree such as the=
<br>
&gt; sysroot.<br>
&gt;<br>
&gt; We&#39;ve tried to keep the gory details of the implementation hidden =
in the<br>
&gt; sstate class. From a user perspective, adding sstate wrapping to a tas=
k<br>
&gt; is as simple as this do_deploy example taken from do_deploy.bbclass:<b=
r>
&gt;<br>
&gt; DEPLOYDIR =3D &quot;${WORKDIR}/deploy-${PN}&quot;<br>
&gt; SSTATETASKS +=3D &quot;do_deploy&quot;<br>
&gt; do_deploy[sstate-name] =3D &quot;deploy&quot;<br>
&gt; do_deploy[sstate-inputdirs] =3D &quot;${DEPLOYDIR}&quot;<br>
&gt; do_deploy[sstate-outputdirs] =3D &quot;${DEPLOY_DIR_IMAGE}&quot;<br>
&gt;<br>
&gt; python do_deploy_setscene () {<br>
&gt; =A0 =A0 sstate_setscene(d)<br>
&gt; }<br>
&gt; addtask do_deploy_setscene<br>
&gt;<br>
&gt; Here, we add some extra flags to the task, a name field (&quot;deploy&=
quot;), an<br>
&gt; input directory which is where the task outputs data to, the output<br=
>
&gt; directory which is where the data from the task should be eventually b=
e<br>
&gt; copied to. We also add a _setscene variant of the task and add the tas=
k<br>
&gt; name to the SSTATETASKS list.<br>
&gt;<br>
&gt; If there was a directory you just need to ensure has its contents<br>
&gt; preserved, this can be done with a line like:<br>
&gt;<br>
&gt; do_package[sstate-plaindirs] =3D &quot;${PKGD} ${PKGDEST}&quot;<br>
&gt;<br>
&gt; Its also worth highlighting mutliple directories can be handled as abo=
ve<br>
&gt; or as in the following input/output example:<br>
&gt;<br>
&gt; do_package[sstate-inputdirs] =3D &quot;${PKGDESTWORK} ${SHLIBSWORKDIR}=
&quot;<br>
&gt; do_package[sstate-outputdirs] =3D &quot;${PKGDATA_DIR} ${SHLIBSDIR}&qu=
ot;<br>
&gt; do_package[sstate-lockfile] =3D &quot;${PACKAGELOCK}&quot;<br>
&gt;<br>
&gt; This also includes the ability to take a lockfile when manipulating<br=
>
&gt; sstate directory structures since some cases are sensitive to file<br>
&gt; additions/removals.<br>
&gt;<br>
&gt; Behind the scenes, the sstate code works by looking in SSTATE_DIR and<=
br>
&gt; also at any SSTATE_MIRRORS for sstate files. An example of a local fil=
e<br>
&gt; url sstate mirror is:<br>
&gt;<br>
&gt; SSTATE_MIRRORS ?=3D &quot;\<br>
&gt; file://.* <a href=3D"http://someserver.tld/share/sstate/" target=3D"_b=
lank">http://someserver.tld/share/sstate/</a> \n \<br>
&gt; file://.* file:///some/local/dir/sstate/&quot;<br>
&gt;<br>
&gt; although any standard PREMIRROR/MIRROR syntax can be used for example<=
br>
&gt; with http:// urls.<br>
&gt;<br>
&gt; The sstate package validity can be detected just by looking at the<br>
&gt; filename since the filename contains the task checksum/signature as<br=
>
&gt; detailed above. If a valid sstate package is found, it will be<br>
&gt; downloaded and used to accelerate the task.<br>
&gt;<br>
&gt; The task acceleration phase is what the *_setscene tasks are used for.=
<br>
&gt; Bitbake goes through this phase before the main execution code and tri=
es<br>
&gt; to accelerate any tasks it can find sstate packages for. If a sstate<b=
r>
&gt; package for a task is available, the sstate package will be used, that=
<br>
&gt; task will not be run and importantly, any dependencies that task will<=
br>
&gt; also not be executed.<br>
&gt;<br>
&gt; As a real world example, the aim is when building an ipk based image,<=
br>
&gt; only the do_package_write_ipk tasks would have their sstate packages<b=
r>
&gt; fetched and extracted. Since the sysroot isn&#39;t used, it would neve=
r get<br>
&gt; extracted. This is another reason to prefer the task based approach<br=
>
&gt; sstate takes over any recipe based approach which would have to instal=
l<br>
&gt; the output from every task.<br>
&gt;<br>
&gt; Tips and Tricks<br>
&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;<br>
&gt; This isn&#39;t simple code and when it goes wrong, debugging needs to =
be<br>
&gt; straightforward. During development we tried to write strong debugging=
<br>
&gt; tools too.<br>
&gt;<br>
&gt; Firstly, whenever a sstate package is written out, so is a<br>
&gt; corresponding .siginfo file. This is a pickled python database of all<=
br>
&gt; the metadata that went into creating the hash for a given sstate<br>
&gt; package.<br>
&gt;<br>
&gt; If bitbake is run with the --dump-signatures (or -S) option, instead o=
f<br>
&gt; building the target package specified it will dump out siginfo files i=
n<br>
&gt; the stamp directory for every task it would have executed.<br>
&gt;<br>
&gt; Finally, there is a bitbake-diffsigs command which can process these<b=
r>
&gt; siginfo files. If one file is specified, it will dump out the dependen=
cy<br>
&gt; information in the file. If two files are specified, it will compare t=
he<br>
&gt; two files and dump out the differences between the two.<br>
&gt;<br>
&gt; This allows the question of &quot;What changed between X and Y?&quot; =
to be<br>
&gt; answered easily.<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; poky mailing list<br>
&gt; <a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_bl=
ank">https://lists.yoctoproject.org/listinfo/poky</a><br>
<br>
--<br>
Darren Hart<br>
Intel Open Source Technology Center<br>
Yocto Project - Linux Kernel<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
</div></div></blockquote></div><br><br clear=3D"all"><br>-- <br>Saludos<br>=
Adrian Alonso<br><a href=3D"http://aalonso.wordpress.com">http://aalonso.wo=
rdpress.com</a><br><br>
</div>

--e0cb4e43d309249ad504a15cd815--
