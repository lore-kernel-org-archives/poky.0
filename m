Return-Path: <mbalcells@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 820824C80523
	for <poky@yoctoproject.org>; Sun,  8 May 2011 16:25:51 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywk9 with SMTP id 9so2330016ywk.35
	for <poky@yoctoproject.org>; Sun, 08 May 2011 14:25:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=3452yOL9dwji1+f8sAVGiOseYUFyWrBg4nkUVhDpDIc=;
	b=xeRSoBL30asgG5FdJR82B9/MOLLcqt4VGOcbYoXMXzX+/Xl8J+TLsjO6El+TN0G+/m
	N9HNQukadsJ1wKDSLsCbF00+BtkMj1buVnrVSNMtpUcca9CLZHV3PRwLZsq9MqYn+KFi
	nK8CqbVkM3B5ny8Fij1nGfLvwfNrREOo1VJiM=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=qxsM3hdGNAIMAKAOxzPBEybXTzGuSjhe02HMZh8gw5thLv79MYUphIwCYqVjjjXEjg
	+Frryj5hvMFalj0vBUVqh6Ng6T7RBjVdt8a3/+XM459JNT3CQWjKp8sDuA6aqtJbhh15
	hHAELYRbdUZTy7DIuysmCNaFly+Kq9hYeWa/M=
MIME-Version: 1.0
Received: by 10.236.78.106 with SMTP id f70mr6844125yhe.266.1304889951001;
	Sun, 08 May 2011 14:25:51 -0700 (PDT)
Received: by 10.236.103.51 with HTTP; Sun, 8 May 2011 14:25:50 -0700 (PDT)
Date: Sun, 8 May 2011 23:25:50 +0200
Message-ID: <BANLkTi=rUWJxJrcP8L5HBOo7+MwXMkPRew@mail.gmail.com>
From: Marc <mbalcells@gmail.com>
To: poky@yoctoproject.org
Subject: help adding perl module
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
X-List-Received-Date: Sun, 08 May 2011 21:25:51 -0000
Content-Type: multipart/alternative; boundary=20cf300fafc3001cac04a2ca5e5a

--20cf300fafc3001cac04a2ca5e5a
Content-Type: text/plain; charset=ISO-8859-1

Hello, I would like to add a perl module which is not included in poky,
which is the best aproach? should I create a recipe or modify perl recipe?
anybody has an example?

Thank's

-- 
Marc.

--20cf300fafc3001cac04a2ca5e5a
Content-Type: text/html; charset=ISO-8859-1

Hello, I would like to add a perl module which is not included in poky, which is the best aproach? should I create a recipe or modify perl recipe?<div>anybody has an example?</div><div><br></div><div>Thank&#39;s<br clear="all">
<br>-- <br>Marc.<br>
</div>

--20cf300fafc3001cac04a2ca5e5a--
