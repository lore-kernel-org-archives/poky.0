Return-Path: <petertornel@yahoo.com>
Received: from nm21-vm3.bullet.mail.ne1.yahoo.com
	(nm21-vm3.bullet.mail.ne1.yahoo.com [98.138.91.151])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id DACD9E01206
	for <poky@yoctoproject.org>; Mon, 23 Apr 2012 18:19:07 -0700 (PDT)
Received: from [98.138.90.52] by nm21.bullet.mail.ne1.yahoo.com with NNFMP;
	24 Apr 2012 01:19:06 -0000
Received: from [98.138.89.161] by tm5.bullet.mail.ne1.yahoo.com with NNFMP;
	24 Apr 2012 01:19:06 -0000
Received: from [127.0.0.1] by omp1017.mail.ne1.yahoo.com with NNFMP;
	24 Apr 2012 01:19:06 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 908707.37068.bm@omp1017.mail.ne1.yahoo.com
Received: (qmail 78007 invoked by uid 60001); 24 Apr 2012 01:19:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1335230346; bh=itMyZJwZIOgjLYAnqoUGHk4upQY191sYmLFDr5x27ps=;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=XVHkmI/8R0Mtb0BYn/aCXZiXsVBLXVDOj0s6hi5AyMQZvmZepAE8YQVJKPrN/RBFnitA52oCWSRXqag53crZPpaypVQfuHnGNjdr+NqNyk7p7YwJ1OrPe0ReDF+g9LTu4kUZ4Ge8K5ulJ99ECHL5uiUHqWivji40Pvos91CpJHI=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=Bvx4pmxrgXMR7mWj9wbHhKTIRcwnt/Ud6BchR0TvenB7W3UggJj9THVk0bl13+SlACPJzpJ0bXAMIVIBqSMIgx9rOQova9zuW6+nYqVSrJ4SZfIkliWfoAu1TwmAnh8wnjUlaYEIqFFJT2okJ2qEuruHfbrEzDZKfTj1KT4ENAw=;
X-YMail-OSG: swNOk6gVM1lYYPehWTHDgc34LRxpWeU4BKzuwuzkfF9PL80
	irogzO3JFdxyZwBeMYr3dcmmeKMsVKcBHFgCvOOrwgi_AKt17OY_SjnWq4PD
	YjV3oGs6if0_40ABdX.vJdGGtJifj25OLvm0GtP6XWfKuvaXnXdkOz78im6V
	0d4dqnucinH4MyFCLpg6R9na5cv4Ky_ooBgLEs6M.uu5UTzHKqMqssOkBlja
	wSybyInOWEUaUi9LTXKg.NWLmHfJbA5orZESBn1iqsC4QLJ7yXJYwqDz.rei
	OUpt3uqV9xX4B2M6AwuGTFsqZKWaW7NEwTMMmrxLtdDV2DmMDUVIMu3f2xsO
	V1Nvf8CH1OzVvbYR0haiukosEsJO0lYEPRDsrTpjEi39Gb4cDddUXcpSDJRA KFg--
Received: from [108.11.41.42] by web122202.mail.ne1.yahoo.com via HTTP;
	Mon, 23 Apr 2012 18:19:06 PDT
X-Mailer: YahooMailWebService/0.8.117.340979
Message-ID: <1335230346.58869.YahooMailNeo@web122202.mail.ne1.yahoo.com>
Date: Mon, 23 Apr 2012 18:19:06 -0700 (PDT)
From: Peter Tornel <petertornel@yahoo.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
MIME-Version: 1.0
Subject: Determining dependencies by looking under work or tmp?
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Peter Tornel <petertornel@yahoo.com>
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 24 Apr 2012 01:19:08 -0000
Content-Type: multipart/alternative;
	boundary="251260810-277431107-1335230346=:58869"

--251260810-277431107-1335230346=:58869
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hello Group,=0A=0AI'm wondering why some packages were built in my work dir=
ectory even though I didn't specify them in my recipes and they didn't show=
 up in my rootfs.=A0 For example, I find strace under work, but I don't fin=
d it in my rootfs.=A0 There are some others I'm wondering about too.=A0 =0A=
=0A=0AIs there evidence left in work or somewhere under tmp for a particula=
r package that shows why it was built or what dependency it filled?=0A=0ARe=
gards,=0A=0APete=0A

--251260810-277431107-1335230346=:58869
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:ti=
mes new roman, new york, times, serif;font-size:12pt"><div>Hello Group,</di=
v><div><br></div><div>I'm wondering why some packages were built in my work=
 directory even though I didn't specify them in my recipes and they didn't =
show up in my rootfs.&nbsp; For example, I find strace under work, but I do=
n't find it in my rootfs.&nbsp; There are some others I'm wondering about t=
oo.&nbsp; <br></div><div><br></div><div>Is there evidence left in work or s=
omewhere under tmp for a particular package that shows why it was built or =
what dependency it filled?</div><div><br></div><div>Regards,</div><div><br>=
</div><div>Pete</div><div></div></div></body></html>

--251260810-277431107-1335230346=:58869--
