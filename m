Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id BAC914C805BB
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 20:01:52 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 5D92B166033C; Wed, 16 Mar 2011 19:01:52 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=4.0 tests=ALL_TRUSTED,BAYES_00,
	FUZZY_AMBIEN autolearn=no version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 23FA616602F5;
	Wed, 16 Mar 2011 19:01:51 -0600 (MDT)
Message-ID: <4D815D7F.3070304@mlbassoc.com>
Date: Wed, 16 Mar 2011 19:01:51 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Nitin A Kamble <nitin.a.kamble@intel.com>
References: <cover.1300309327.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1300309327.git.nitin.a.kamble@intel.com>
Cc: poky@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [PATCH 0/2] GPLv2 versions of m4 & bison
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
X-List-Received-Date: Thu, 17 Mar 2011 01:01:53 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/16/2011 03:03 PM, Nitin A Kamble wrote:
> From: Nitin A Kamble<nitin.a.kamble@intel.com>
>
> These commits adds GPLv2 versions of m4&  bison recipes.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: nitin/misc
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/misc
>
> Thanks,
>      Nitin A Kamble<nitin.a.kamble@intel.com>
> ---
>
>
> Nitin A Kamble (2):
>    bison: bring back GPLv2 version 2.3 of bison recipe
>    m4: bring back GPLv2 version 1.4.9 of m4 recipe
>
>   .../bison/bison/bison-2.3_m4.patch                 |  590 ++++++++++++++++++++
>   meta/recipes-devtools/bison/bison_2.3.bb           |   35 ++
>   meta/recipes-devtools/m4/m4-native_1.4.9.bb        |   12 +
>   .../m4/m4/fix_for_circular_dependency.patch        |   75 +++
>   meta/recipes-devtools/m4/m4_1.4.9.bb               |   18 +
>   5 files changed, 730 insertions(+), 0 deletions(-)
>   create mode 100644 meta/recipes-devtools/bison/bison/bison-2.3_m4.patch
>   create mode 100644 meta/recipes-devtools/bison/bison_2.3.bb
>   create mode 100644 meta/recipes-devtools/m4/m4-native_1.4.9.bb
>   create mode 100644 meta/recipes-devtools/m4/m4/fix_for_circular_dependency.patch
>   create mode 100644 meta/recipes-devtools/m4/m4_1.4.9.bb
>

Was this purely for licensing reasons?  (just asking since there was no discussion on this list)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

