Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web10.5200.1670601755820664696
 for <poky@lists.yoctoproject.org>;
 Fri, 09 Dec 2022 08:02:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@engineeredarts.co.uk header.s=google header.b=WWbDsxiw;
 spf=pass (domain: engineeredarts.co.uk, ip: 209.85.216.44, mailfrom: dan@engineeredarts.co.uk)
Received: by mail-pj1-f44.google.com with SMTP id 3-20020a17090a098300b00219041dcbe9so5382766pjo.3
        for <poky@lists.yoctoproject.org>; Fri, 09 Dec 2022 08:02:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=engineeredarts.co.uk; s=google;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=51BSPLXrD+Khb6FqrK/HjYaqPaAvlCFUhgCfMnELNhw=;
        b=WWbDsxiwugYOOA+PiKSK+Mge3hMcpeekke+WYYBT3ksbRNxR1TlZ0VCfUaL1VnjnbJ
         mEaYN+WAF6m2/ffcZqUcCZOMU1j6pCEeDPU25aAEh+QPv/LdladMW5WhCc25j2VpWQmq
         7R+QkdQswLyojLb2uGVvNt3lJ1dERaeO86vOBIAVKaZ0s79dDlmxpI3lxWMiS0/bMBHD
         8gZ1EqlS7lU/3JsA0mb8eqR3atkI62xFNwZU7kP775f+uLVTsT3vogcvz2iWX+3Lpw+0
         hsoUvXNRVGrPNl2K3mNS4MTwxzUHjxaDNuCGPCSGzfDzUesjFep3NyxlYikTTm6bGNVC
         ws6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=51BSPLXrD+Khb6FqrK/HjYaqPaAvlCFUhgCfMnELNhw=;
        b=Ns9/hiyMgsr39E2fwaGc1d1rI/vRVpKXkx9mZ9zXfrvSiV7dG8v0ApURefos77ZikQ
         heBZFaTGfe1cS73kCNE2y+csU6+SMnV49ScePx5iwpoLG2bltXhXzg3rUjnl5gALAYW8
         6x5mWu4SbALHIAc+K8vOXOoKBe2zHz1nBuMkfZNAuIHw7krDHdAy34QiQg1vkNMOmSgQ
         NZMT9VRVTtbq8Z0SJEaC0Z/bEG8I4GAIYV8rjd3L5du0IBiskekU8fuG0DjoFyAoOBGg
         HaUXPOQYVMRt63QDAxELbfUn7y0PHGz4Tqq4yF6TSfP4X/58DnTJ/gl+2bRfHzcyISgP
         KovQ==
X-Gm-Message-State: ANoB5pnSTSQmcBQfaCrt0Sj3RunjBrSi4oP6iuMAbK2s9BsyoGooLm5I
	TIkM8s6DC8XZT8RADbuvfhgMHmg7B/W46SyYn3xVubi5lGclfJxW
X-Google-Smtp-Source: AA0mqf5/DwRI3crNFyf2oE0Ar69JZb3mRxXKu45Y00s7XAD0uv2p/MTDUgjXNwq4gyF6pQkf7SpbnImdzXgTiKbivYM=
X-Received: by 2002:a17:902:d4c8:b0:189:cf7a:b563 with SMTP id
 o8-20020a170902d4c800b00189cf7ab563mr20676012plg.56.1670601754990; Fri, 09
 Dec 2022 08:02:34 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a10:70a:b0:358:832f:d32c with HTTP; Fri, 9 Dec 2022
 08:02:34 -0800 (PST)
X-Originating-IP: [86.16.192.236]
From: "Daniel Squires" <dan@engineeredarts.co.uk>
Date: Fri, 9 Dec 2022 16:02:34 +0000
Message-ID: <CAC+ji7EOT6D35madOZvx6tS8Nj43Tiq-cg06WYO8xue8MnBhiQ@mail.gmail.com>
Subject: Unexpected package version going backwards warnings.
To: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000002af2a605ef674841"

--0000000000002af2a605ef674841
Content-Type: text/plain; charset="UTF-8"

Hi!
We're using kirkstone, though not the very latest at present.
Every now and then a a number of packages will unexpectedly give the error
re package versions going backwards and teh version may have done something
like go from git5-######-r0.1 to git3-#######-r0.0.
We always see this if we've been using devtool for a given recipe and then
do a devtool reset, it complains about going back from git999 to e.g. git5
but this makes sense and we just run the build again and forget about it.
However sometimes this just seems to happen randomly for a given recipe
when it picks up a new commit from our repos and the git autoinc number
will have gone back a few.
Does anybody know why and if it is a bug or an be fixed?


-- 
*Dan Squires*
Senior Roboticist
www.engineeredarts.co.uk

[image: EA Phone Number]+44 (0)1326 378129

[image: RoboThespian FB] <https://www.facebook.com/RobotThespian> [image:
RoboThespian Twitter] <https://twitter.com/robothespian> [image: EA YouTube]
<http://youtube.com/EngineeredArts>
[image: Engineered Arts Logo] <https://www.engineeredarts.co.uk/>


* Engineered Arts Ltd *
E1-E3 Church View Business Park,
Bickland Water Road,
Falmouth Cornwall,
TR11 4FZ
United Kingdom

[image: Subscribe to Mailing List]
<https://www.engineeredarts.co.uk/mailing-list/>

--0000000000002af2a605ef674841
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi!<br></div><div>We&#39;re using kirkstone, though not the very lates=
t at present.=C2=A0</div><div>Every now and then a a number of packages wil=
l unexpectedly give the error re package versions going backwards and teh v=
ersion may have done something like go from git5-######-r0.1 to git3-######=
#-r0.0.</div><div>We always see this if we&#39;ve been using devtool for a =
given recipe and then do a devtool reset, it complains about going back fro=
m git999 to e.g. git5 but this makes sense and we just run the build again =
and forget about it. However sometimes this just seems to happen randomly f=
or a given recipe when it picks up a new commit from our repos and the git =
autoinc number will have gone back a few.</div><div>Does anybody know why a=
nd if it is a bug or an be fixed?</div><br><br>-- <br><div dir=3D"ltr"><fon=
t face=3D"Helvetica, Arial, sans-serif"><b>Dan Squires</b></font><br>
<font size=3D"-1" color=3D"#666666">Senior Roboticist</font><a href=3D"http=
s://www.engineeredarts.co.uk/" target=3D"_blank"><font size=3D"-2" color=3D=
"#509ed2"><br>
    <font color=3D"#000000">www.engineeredarts.co.uk</font></font></a><font=
 size=3D"-2"><br>
  <br>
</font><font size=3D"-2"><img src=3D"https://www.engineeredarts.co.uk/wp-co=
ntent/uploads/2018/05/Phone.png" alt=3D"EA Phone Number" width=3D"23" heigh=
t=3D"23" align=3D"left"></font><font size=3D"-2">+44 (0)1326 378129</font><=
br>
<br>
<a href=3D"https://www.facebook.com/RobotThespian" target=3D"_blank"><img s=
rc=3D"https://www.engineeredarts.co.uk/wp-content/uploads/2018/05/facebook.=
png" alt=3D"RoboThespian FB" width=3D"11" height=3D"17" border=3D"0" align=
=3D"top"></a>
<a href=3D"https://twitter.com/robothespian" target=3D"_blank"><img src=3D"=
https://www.engineeredarts.co.uk/wp-content/uploads/2018/05/twitter.png" al=
t=3D"RoboThespian Twitter" width=3D"19" height=3D"16" border=3D"0"></a>  <a=
 href=3D"http://youtube.com/EngineeredArts" target=3D"_blank"><img src=3D"h=
ttps://www.engineeredarts.co.uk/wp-content/uploads/2018/05/youtube.png" alt=
=3D"EA YouTube" width=3D"21" height=3D"14" border=3D"0"></a><br>
<a href=3D"https://www.engineeredarts.co.uk/" target=3D"_blank"><font size=
=3D"-2"><img src=3D"https://www.engineeredarts.co.uk/wp-content/uploads/201=
8/05/EngArts-Logo.png" alt=3D"Engineered Arts Logo" width=3D"131" height=3D=
"39" border=3D"0" align=3D"left"></font></a><br>
<font size=3D"-2"><b><br>
    <font color=3D"#666666"><br>
      Engineered Arts Ltd </font></b><font color=3D"#666666"><br>
  E1-E3 Church View Business Park, <br>
  Bickland Water Road,<br> Falmouth Cornwall,<br> TR11 4FZ <br>
</font><font size=3D"-2" color=3D"#666666">United Kingdom<br>
  <br>
  <a href=3D"https://www.engineeredarts.co.uk/mailing-list/" target=3D"_bla=
nk"><img src=3D"https://www.engineeredarts.co.uk/wp-content/uploads/2018/05=
/EA_Subcribe.jpg" alt=3D"Subscribe to Mailing List" width=3D"366" height=3D=
"68" border=3D"0"></a></font></font><br></div><br>

--0000000000002af2a605ef674841--
