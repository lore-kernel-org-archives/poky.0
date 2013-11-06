Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41348E017A2
	for <poky@yoctoproject.org>; Wed,  6 Nov 2013 09:46:31 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 06 Nov 2013 09:46:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="385560447"
Received: from unknown (HELO [10.255.14.249]) ([10.255.14.249])
	by azsmga001.ch.intel.com with ESMTP; 06 Nov 2013 09:46:26 -0800
Message-ID: <527A8072.8030101@linux.intel.com>
Date: Wed, 06 Nov 2013 09:46:26 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>, poky@yoctoproject.org
References: <cover.1383757684.git.ajlennon@dynamicdevices.co.uk>
In-Reply-To: <cover.1383757684.git.ajlennon@dynamicdevices.co.uk>
Subject: Re: [PULL] [PATCH 0/2] sqlite3: Add support for column metadata API,
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
X-List-Received-Date: Wed, 06 Nov 2013 17:46:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/06/2013 09:10 AM, Alex J Lennon wrote:
> I found that Mono.Data.SQlite has a dependency on the column meta-data API, thus enabling this API enables use of Hibernate / Mono with SQLite and no doubt enables other ORMs / utility libraries.
>
> ref: https://bugzilla.xamarin.com/show_bug.cgi?id=6333
>
> The API is present in the used SQLite3 sqlite-autoconf-3080002 source-base. Thus we are enabling pre-existing SQLite support rather than introducing new code.
>
> I am not aware of any issues that enabling this SQLite functionality introduces, other than a slightly increased library size of circa 1.5KB , i.e. coretexa9_vfp_neon i.MX6
>
> - with column meta-data API        610360 libsqlite3.so.0.8.6
> - without column meta-data API  608880 libsqlite3.so.0.8.6
>
this message should realy be part of the commit not in the cover letter, 
  also please send this to the openembedded-core@lists.openembedded.org list

> The following changes since commit 9f7f7afaa47bc3a058234269bffa55e15558df16:
>
>    irda-utils: restart irda daemon correctly (2013-11-01 11:09:03 +0000)
>
> are available in the git repository at:
>
>    git://git.yoctoproject.org/poky-contrib ajlennon/sqlite
>    http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=ajlennon/sqlite
>
> Alex J Lennon (2):
>    sqlite3: Add support for column metadata API, bumped PR
>    sqlite3: Add support for column metadata API
>

you can sqash these two together please

thanks

Sau!

>   meta/recipes-support/sqlite/sqlite3_3080002.bb |    5 +++++
>   1 file changed, 5 insertions(+)
>

