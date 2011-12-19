Return-Path: <andrei@gherzan.ro>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0F66E00306
	for <poky@yoctoproject.org>; Mon, 19 Dec 2011 04:47:49 -0800 (PST)
Received: by yhpp56 with SMTP id p56so4518680yhp.35
	for <poky@yoctoproject.org>; Mon, 19 Dec 2011 04:47:48 -0800 (PST)
Received: by 10.236.123.108 with SMTP id u72mr27323260yhh.45.1324298866080;
	Mon, 19 Dec 2011 04:47:46 -0800 (PST)
Received: from [128.224.170.182] ([89.121.200.106])
	by mx.google.com with ESMTPS id 32sm46595398ant.12.2011.12.19.04.47.44
	(version=SSLv3 cipher=OTHER); Mon, 19 Dec 2011 04:47:45 -0800 (PST)
Message-ID: <4EEF326F.3060901@gherzan.ro>
Date: Mon, 19 Dec 2011 14:47:43 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4EEB1EF8.7060204@gherzan.ro>
In-Reply-To: <4EEB1EF8.7060204@gherzan.ro>
Subject: Re: License | "or" problem?
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
X-List-Received-Date: Mon, 19 Dec 2011 12:47:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Bug summited with proposed patch:

*Bug 1844* 
<http://bugzilla.yoctoproject.org/show_bug.cgi?id=1844>-base.bbclass 
should check for multiple (or) licenses in bb files

