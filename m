Return-Path: <cahoshing@gmail.com>
Received: from mail-pv0-f176.google.com (mail-pv0-f176.google.com
	[74.125.83.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 071854C80050
	for <poky@yoctoproject.org>; Tue, 22 Mar 2011 23:38:45 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pve37 with SMTP id 37so468603pve.35
	for <poky@yoctoproject.org>; Tue, 22 Mar 2011 21:38:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=zcorcCCaEvM363QY8ee7SEkgbcCOIZRJGOxnxkE0JAc=;
	b=U7ibgxqVzzYk8AUOH/NeNl+7gA6jfF0nAw2Zyjs4t+4WsuKa5IcrZVco1TJgUo5IRu
	zL81Ogm/25IbiuV3IIi29OtZiSqrHjmtqahPnUhUw4kjy28cFaeK7aR6O1cg10a8VkSz
	jz0I7E/ati4O7FGVFBc1lBaBLpvhO9gimAgII=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=ue9xU/BUxjZJw47jmDp4qbr2xZkG0V2BpnvZWWPHlfDiZ04yLWOwFvE2zQ0xjECTN3
	DhGIMIZ3v3JsVqtJTyT3sVKZDs7oc37fH7dX9/SWMKV021gaYBG/NN0MG67PF+3pOKVE
	95RxjpYgmfoIRFa/9Wjmpw80aBOP9cPK1fwb4=
MIME-Version: 1.0
Received: by 10.142.209.9 with SMTP id h9mr4881889wfg.63.1300855124506; Tue,
	22 Mar 2011 21:38:44 -0700 (PDT)
Received: by 10.143.41.3 with HTTP; Tue, 22 Mar 2011 21:38:44 -0700 (PDT)
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1505770D746B8@shsmsx502.ccr.corp.intel.com>
References: <AANLkTi=Rqe+q0EPir=m+un8c0LYtv9BS40LrPtZyXMRr@mail.gmail.com>
	<625BA99ED14B2D499DC4E29D8138F1505770D74695@shsmsx502.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1505770D746B8@shsmsx502.ccr.corp.intel.com>
Date: Wed, 23 Mar 2011 10:08:44 +0530
Message-ID: <AANLkTikxonJcHMVPhJuhs28=bMjEaO2axTAPde3s5vku@mail.gmail.com>
From: chinmaya hoshing <cahoshing@gmail.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Error while pulling mpeg2dec library
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
X-List-Received-Date: Wed, 23 Mar 2011 04:38:46 -0000
Content-Type: multipart/alternative; boundary=000e0cd32c1699ba72049f1eef48

--000e0cd32c1699ba72049f1eef48
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Thanks for the reply kevin
I have resolved the error of unbuildable mpeg2dec it worked !!

Chinmaya

On Fri, Mar 11, 2011 at 6:51 AM, Tian, Kevin <kevin.tian@intel.com> wrote:

> another possible reason is that mpeg2dec is included in the commercial
> license list. You may comment below line from your local.conf:
>
>
>
> COMMERCIAL_LICENSE ?=3D "lame gst-fluendo-mp3 libmad mpeg2dec ffmpeg qmmp=
"
>
>
>
> Thanks
>
> Kevin
>
>
>
> *From:* poky-bounces@yoctoproject.org [mailto:
> poky-bounces@yoctoproject.org] *On Behalf Of *Tian, Kevin
> *Sent:* Friday, March 11, 2011 9:09 AM
> *To:* chinmaya hoshing; poky@yoctoproject.org
> *Subject:* Re: [poky] Error while pulling mpeg2dec library
>
>
>
> where=92s your mpeg2dec recipe located?
>
>
>
> if it=92s in a separate directory than meta, you need include it in
> conf/bblayers.conf to make sure it can be reached by the bitbake.
>
>
>
> Thanks
>
> Kevin
>
>
>
> *From:* poky-bounces@yoctoproject.org [mailto:
> poky-bounces@yoctoproject.org] *On Behalf Of *chinmaya hoshing
> *Sent:* Thursday, March 10, 2011 6:37 PM
> *To:* poky@yoctoproject.org
> *Subject:* [poky] Error while pulling mpeg2dec library
>
>
>
> Hi,
>
> I am getting error while pulling mpeg2dec library,also i have checked the
> bb file for the same but still it is saying unbuildable,
>
> what is getting wrong??
>
>
>
> NOTE: Resolving any missing task queue dependencies
>
> ERROR: Nothing RPROVIDES 'mpeg2dec' (but
> /home/sct/poky-chrome/meta/recipes-core/images/
> poky-image-minimal-akshat.bb RDEPENDS on or otherwise requires it)
>
> NOTE: Runtime target 'mpeg2dec' is unbuildable, removing...
>
> Missing or unbuildable dependency chain was: ['mpeg2dec']
>
> ERROR: Required build target 'poky-image-minimal-akshat-live' has no
> buildable providers.
>
> Missing or unbuildable dependency chain was:
> ['poky-image-minimal-akshat-live', 'poky-image-minimal-akshat', 'mpeg2dec=
']
>
> Command execution failed: Traceback (most recent call last):
>
>   File "/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/command.py", lin=
e
> 88, in runAsyncCommand
>
>     commandmethod(self.cmds_async, self, options)
>
>   File "/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/command.py", lin=
e
> 184, in buildTargets
>
>     command.cooker.buildTargets(pkgs_to_build, task)
>
>   File "/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/cooker.py", line
> 758, in buildTargets
>
>     taskdata.add_unresolved(localdata, self.status)
>
>   File "/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/taskdata.py", li=
ne
> 541, in add_unresolved
>
>     self.remove_runtarget(self.getrun_id(target))
>
>   File "/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/taskdata.py", li=
ne
> 518, in remove_runtarget
>
>     self.fail_fnid(fnid, missing_list)
>
>   File "/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/taskdata.py", li=
ne
> 472, in fail_fnid
>
>     self.remove_buildtarget(target, missing_list)
>
>   File "/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/taskdata.py", li=
ne
> 497, in remove_buildtarget
>
>     self.fail_fnid(self.tasks_fnid[taskid], missing_list)
>
>   File "/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/taskdata.py", li=
ne
> 472, in fail_fnid
>
>     self.remove_buildtarget(target, missing_list)
>
>   File "/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/taskdata.py", li=
ne
> 502, in remove_buildtarget
>
>     raise bb.providers.NoProvider(target)
>
> NoProvider: poky-image-minimal-akshat-live
>
>
>
> Wtih Regards
>
> Chinmaya
>

--000e0cd32c1699ba72049f1eef48
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks for the reply kevin</div><div>I have resolved =
the error of unbuildable mpeg2dec it worked !!</div><div><div><br></div>Chi=
nmaya</div><div><br><div class=3D"gmail_quote">On Fri, Mar 11, 2011 at 6:51=
 AM, Tian, Kevin <span dir=3D"ltr">&lt;<a href=3D"mailto:kevin.tian@intel.c=
om" target=3D"_blank">kevin.tian@intel.com</a>&gt;</span> wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div lang=3D"ZH-CN" link=3D"blue" vlink=3D"p=
urple"><div><p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:=
10.5pt;color:#1F497D">another possible reason is that mpeg2dec is included =
in the commercial license list. You may comment below line from your local.=
conf:</span></p>


<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;color=
:#1F497D">=A0</span></p><p class=3D"MsoNormal"><span lang=3D"EN-US" style=
=3D"font-size:10.5pt;color:#1F497D">COMMERCIAL_LICENSE ?=3D &quot;lame gst-=
fluendo-mp3 libmad mpeg2dec ffmpeg qmmp&quot;</span></p>


<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;color=
:#1F497D">=A0</span></p><p class=3D"MsoNormal"><span lang=3D"EN-US" style=
=3D"font-size:10.5pt;color:#1F497D">Thanks</span></p><p class=3D"MsoNormal"=
><span lang=3D"EN-US" style=3D"font-size:10.5pt;color:#1F497D">Kevin</span>=
</p>


<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;color=
:#1F497D">=A0</span></p><div style=3D"border:none;border-left:solid blue 1.=
5pt;padding:0cm 0cm 0cm 4.0pt"><div><div style=3D"border:none;border-top:so=
lid #B5C4DF 1.0pt;padding:3.0pt 0cm 0cm 0cm">


<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt">F=
rom:</span></b><span lang=3D"EN-US" style=3D"font-size:10.0pt"> <a href=3D"=
mailto:poky-bounces@yoctoproject.org" target=3D"_blank">poky-bounces@yoctop=
roject.org</a> [mailto:<a href=3D"mailto:poky-bounces@yoctoproject.org" tar=
get=3D"_blank">poky-bounces@yoctoproject.org</a>] <b>On Behalf Of </b>Tian,=
 Kevin<br>


<b>Sent:</b> Friday, March 11, 2011 9:09 AM<br><b>To:</b> chinmaya hoshing;=
 <a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoproje=
ct.org</a><br><b>Subject:</b> Re: [poky] Error while pulling mpeg2dec libra=
ry</span></p>


</div></div><div><div></div><div><p class=3D"MsoNormal"><span lang=3D"EN-US=
">=A0</span></p><p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-s=
ize:10.5pt;color:#1F497D">where=92s your mpeg2dec recipe located?</span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;color=
:#1F497D">=A0</span></p><p class=3D"MsoNormal"><span lang=3D"EN-US" style=
=3D"font-size:10.5pt;color:#1F497D">if it=92s in a separate directory than =
meta, you need include it in conf/bblayers.conf to make sure it can be reac=
hed by the bitbake.</span></p>


<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;color=
:#1F497D">=A0</span></p><p class=3D"MsoNormal"><span lang=3D"EN-US" style=
=3D"font-size:10.5pt;color:#1F497D">Thanks</span></p><p class=3D"MsoNormal"=
><span lang=3D"EN-US" style=3D"font-size:10.5pt;color:#1F497D">Kevin</span>=
</p>


<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;color=
:#1F497D">=A0</span></p><div style=3D"border:none;border-left:solid blue 1.=
5pt;padding:0cm 0cm 0cm 4.0pt"><div><div style=3D"border:none;border-top:so=
lid #B5C4DF 1.0pt;padding:3.0pt 0cm 0cm 0cm">


<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt">F=
rom:</span></b><span lang=3D"EN-US" style=3D"font-size:10.0pt"> <a href=3D"=
mailto:poky-bounces@yoctoproject.org" target=3D"_blank">poky-bounces@yoctop=
roject.org</a> [mailto:<a href=3D"mailto:poky-bounces@yoctoproject.org" tar=
get=3D"_blank">poky-bounces@yoctoproject.org</a>] <b>On Behalf Of </b>chinm=
aya hoshing<br>


<b>Sent:</b> Thursday, March 10, 2011 6:37 PM<br><b>To:</b> <a href=3D"mail=
to:poky@yoctoproject.org" target=3D"_blank">poky@yoctoproject.org</a><br><b=
>Subject:</b> [poky] Error while pulling mpeg2dec library</span></p></div>

</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=A0</span></p><div><div><p clas=
s=3D"MsoNormal"><span lang=3D"EN-US">Hi,</span></p></div><div><p class=3D"M=
soNormal"><span lang=3D"EN-US">I am getting error while pulling mpeg2dec li=
brary,also i have checked the bb file for the same but still it is saying u=
nbuildable,</span></p>


</div><div><p class=3D"MsoNormal"><span lang=3D"EN-US">what is getting wron=
g??</span></p></div><div><p class=3D"MsoNormal"><span lang=3D"EN-US">=A0</s=
pan></p></div><div><p class=3D"MsoNormal"><span lang=3D"EN-US">NOTE: Resolv=
ing any missing task queue dependencies</span></p>


</div><div><p class=3D"MsoNormal"><span lang=3D"EN-US">ERROR: Nothing RPROV=
IDES &#39;mpeg2dec&#39; (but /home/sct/poky-chrome/meta/recipes-core/images=
/<a href=3D"http://poky-image-minimal-akshat.bb" target=3D"_blank">poky-ima=
ge-minimal-akshat.bb</a> RDEPENDS on or otherwise requires it)</span></p>


</div><div><p class=3D"MsoNormal"><span lang=3D"EN-US">NOTE: Runtime target=
 &#39;mpeg2dec&#39; is unbuildable, removing...</span></p></div><div><p cla=
ss=3D"MsoNormal"><span lang=3D"EN-US">Missing or unbuildable dependency cha=
in was: [&#39;mpeg2dec&#39;]</span></p>


</div><div><p class=3D"MsoNormal"><span lang=3D"EN-US">ERROR: Required buil=
d target &#39;poky-image-minimal-akshat-live&#39; has no buildable provider=
s.</span></p></div><div><p class=3D"MsoNormal"><span lang=3D"EN-US">Missing=
 or unbuildable dependency chain was: [&#39;poky-image-minimal-akshat-live&=
#39;, &#39;poky-image-minimal-akshat&#39;, &#39;mpeg2dec&#39;]</span></p>


</div><div><p class=3D"MsoNormal"><span lang=3D"EN-US">Command execution fa=
iled: Traceback (most recent call last):</span></p></div><div><p class=3D"M=
soNormal"><span lang=3D"EN-US">=A0=A0File &quot;/home/sct/poky-chrome/scrip=
ts/..//bitbake/lib/bb/command.py&quot;, line 88, in runAsyncCommand</span><=
/p>


</div><div><p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0 =A0commandmet=
hod(self.cmds_async, self, options)</span></p></div><div><p class=3D"MsoNor=
mal"><span lang=3D"EN-US">=A0=A0File &quot;/home/sct/poky-chrome/scripts/..=
//bitbake/lib/bb/command.py&quot;, line 184, in buildTargets</span></p>


</div><div><p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0 =A0command.co=
oker.buildTargets(pkgs_to_build, task)</span></p></div><div><p class=3D"Mso=
Normal"><span lang=3D"EN-US">=A0=A0File &quot;/home/sct/poky-chrome/scripts=
/..//bitbake/lib/bb/cooker.py&quot;, line 758, in buildTargets</span></p>


</div><div><p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0 =A0taskdata.a=
dd_unresolved(localdata, self.status)</span></p></div><div><p class=3D"MsoN=
ormal"><span lang=3D"EN-US">=A0=A0File &quot;/home/sct/poky-chrome/scripts/=
..//bitbake/lib/bb/taskdata.py&quot;, line 541, in add_unresolved</span></p=
>


</div><div><p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0 =A0self.remov=
e_runtarget(self.getrun_id(target))</span></p></div><div><p class=3D"MsoNor=
mal"><span lang=3D"EN-US">=A0=A0File &quot;/home/sct/poky-chrome/scripts/..=
//bitbake/lib/bb/taskdata.py&quot;, line 518, in remove_runtarget</span></p=
>


</div><div><p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0 =A0self.fail_=
fnid(fnid, missing_list)</span></p></div><div><p class=3D"MsoNormal"><span =
lang=3D"EN-US">=A0=A0File &quot;/home/sct/poky-chrome/scripts/..//bitbake/l=
ib/bb/taskdata.py&quot;, line 472, in fail_fnid</span></p>


</div><div><p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0 =A0self.remov=
e_buildtarget(target, missing_list)</span></p></div><div><p class=3D"MsoNor=
mal"><span lang=3D"EN-US">=A0=A0File &quot;/home/sct/poky-chrome/scripts/..=
//bitbake/lib/bb/taskdata.py&quot;, line 497, in remove_buildtarget</span><=
/p>


</div><div><p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0 =A0self.fail_=
fnid(self.tasks_fnid[taskid], missing_list)</span></p></div><div><p class=
=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0File &quot;/home/sct/poky-chrome/=
scripts/..//bitbake/lib/bb/taskdata.py&quot;, line 472, in fail_fnid</span>=
</p>


</div><div><p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0 =A0self.remov=
e_buildtarget(target, missing_list)</span></p></div><div><p class=3D"MsoNor=
mal"><span lang=3D"EN-US">=A0=A0File &quot;/home/sct/poky-chrome/scripts/..=
//bitbake/lib/bb/taskdata.py&quot;, line 502, in remove_buildtarget</span><=
/p>


</div><div><p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0 =A0raise bb.p=
roviders.NoProvider(target)</span></p></div><div><p class=3D"MsoNormal"><sp=
an lang=3D"EN-US">NoProvider: poky-image-minimal-akshat-live</span></p></di=
v><div><p class=3D"MsoNormal">


<span lang=3D"EN-US">=A0</span></p></div><div><p class=3D"MsoNormal"><span =
lang=3D"EN-US">Wtih Regards=A0</span></p></div><div><p class=3D"MsoNormal">=
<span lang=3D"EN-US">Chinmaya</span></p></div></div></div></div></div></div=
></div></div>


</blockquote></div><br></div></div>

--000e0cd32c1699ba72049f1eef48--
