Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id CBEAD4C800B9
	for <poky@yoctoproject.org>; Tue, 28 Jun 2011 05:27:19 -0500 (CDT)
Received: by wwf4 with SMTP id 4so54113wwf.11
	for <poky@yoctoproject.org>; Tue, 28 Jun 2011 03:27:18 -0700 (PDT)
Received: by 10.216.59.16 with SMTP id r16mr6398039wec.25.1309256838611;
	Tue, 28 Jun 2011 03:27:18 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id d7sm28193wek.45.2011.06.28.03.27.17
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 28 Jun 2011 03:27:17 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4E08E198.8010101@intel.com>
Date: Tue, 28 Jun 2011 12:27:15 +0200
Message-Id: <C1F9E693-BFB7-48FE-90AF-5E914CA2AFFE@dominion.thruhere.net>
References: <cover.1308101091.git.scott.a.garman@intel.com>
	<4E08E198.8010101@intel.com>
To: Scott Garman <scott.a.garman@intel.com>
X-Mailer: Apple Mail (2.1084)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] bitbake wrapper: exit if python v3 is detected
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
X-List-Received-Date: Tue, 28 Jun 2011 10:27:20 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit


Op 27 jun 2011, om 22:01 heeft Scott Garman het volgende geschreven:

> On 06/14/2011 06:42 PM, Scott Garman wrote:
>> Make sure we're not using python v3.x. This check can't go into
>> sanity.bbclass because bitbake's source code doesn't even pass
>> parsing stage when used with python v3, so we catch it here so we
>> can offer a meaningful error message.
>> 
>> This fixes bug [YOCTO #1128]
>> 
>> I did attempt to make changes to bitbake to get the source code to
>> parse under python v3, but there are issues which make it too
>> difficult to get the code to work with python v2 and v3. For example,
>> importing modules within a package has changed significantly in v3
>> in such a way that breaks compatability with v2.
> 
> Ping?

Try posting it on the OE-core list?

