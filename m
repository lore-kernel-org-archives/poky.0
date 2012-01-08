Return-Path: <andrei@gherzan.ro>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82A12E00303
	for <poky@yoctoproject.org>; Sun,  8 Jan 2012 04:32:55 -0800 (PST)
Received: by eekd49 with SMTP id d49so1961991eek.35
	for <poky@yoctoproject.org>; Sun, 08 Jan 2012 04:32:54 -0800 (PST)
Received: by 10.14.127.68 with SMTP id c44mr4893192eei.47.1326025974325;
	Sun, 08 Jan 2012 04:32:54 -0800 (PST)
Received: from [192.168.1.2] ([79.115.118.211])
	by mx.google.com with ESMTPS id b49sm245038305eec.9.2012.01.08.04.32.53
	(version=SSLv3 cipher=OTHER); Sun, 08 Jan 2012 04:32:53 -0800 (PST)
Message-ID: <4F098CF9.7090309@gherzan.ro>
Date: Sun, 08 Jan 2012 14:32:57 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4F098BF6.1090404@gherzan.ro>
In-Reply-To: <4F098BF6.1090404@gherzan.ro>
X-Forwarded-Message-Id: <4F098BF6.1090404@gherzan.ro>
Subject: Miss-match between excluded license names and license name files
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
X-List-Received-Date: Sun, 08 Jan 2012 12:32:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello all,

I faced another GPLv3 related bug/issue. This one goes like this. In 
base.class excluded/skipped packages from build are those that are 
EXACTLY as they are typed in INCOMPATIBLE_LICENSE. For example a package 
with LICENSE=GPLv3 will be excluded from build and one with 
LICENSE=GPL-3 won't be. That would be a problem because a package like 
gettext 0.18 where LICENSE=GPL-3 is not excluded even if it is GPLv3. 
The standard license name for versions of GPL is indeed GPL-X.Y. Example 
GPL-3.0. So, as i see we have a couple (2) of fixes for this.

1. Modify gettext's LICENSE to GPLv3. This is the quick one but no so... 
let's say standardized. I will commit this change as a workaround (or 
not) until we will have a conclusion upon this matter.
2. Recode base.bbclass part where INCOMPATIBLE_LICENSE is managed in 
order to take into consideration those license variations defined in 
license.bbclass. This is the "long" fix. An issue here would be that all 
mapping in license.bbclass is on GPL-3.0 (as i think should be in this 
naming standard). So we will have to redefine INCOMPATIBLE_LICENSE to 
this value after the base.bbclass specified recoding is done. In this 
way all those workarounds with "if GPLv3 is in INCOMPATIBLE_LICENSE" 
will have to be modified as well, to check for GPL-3.0. In this way we 
can take advantage of the already done mapping in license.bbclass, let 
developers have their variations of LICENSE and still skipping those 
packages from non-GPL-3.0 license builds. I think that this would be the 
most complete fix in order to scale this INCOMPATIBLE_LICENSE issue.

Andrei

