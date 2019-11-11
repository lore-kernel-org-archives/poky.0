Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94C33E00D6A; Mon, 11 Nov 2019 02:31:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FE48E007AE
	for <poky@yoctoproject.org>; Mon, 11 Nov 2019 02:31:07 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	11 Nov 2019 02:31:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,292,1569308400"; d="scan'208";a="354737230"
Received: from unknown (HELO blackadder.local) ([10.252.44.81])
	by orsmga004.jf.intel.com with ESMTP; 11 Nov 2019 02:31:05 -0800
To: poky@yoctoproject.org
References: <CAOe0dAXWDdPBkyDRje3tyfj2kr+2bhJjW+qYY8SE+FzbSoYJcg@mail.gmail.com>
	<CAOe0dAU+FrwK0jAqJWi4iEd7Cx89RJXRhVpOPNTPjv60t33bEg@mail.gmail.com>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <e222c118-1173-bae8-4060-8bbff97c2c78@intel.com>
Date: Mon, 11 Nov 2019 10:31:05 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <CAOe0dAU+FrwK0jAqJWi4iEd7Cx89RJXRhVpOPNTPjv60t33bEg@mail.gmail.com>
Subject: Re: Poky compilation error due to fontconfig package
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
X-List-Received-Date: Mon, 11 Nov 2019 10:31:07 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 09/11/2019 19:39, AshishKumar Mishra wrote:
> Hi All ,
> 
> Debugging further could find that problem was when asla-tools  was added 
> to IMAGE_INSTALL.
> 
> To Debug below is the approach i took :-
> 1) On standard poky
>      - Generated core-image-minimal on poky which created image properly.
>      - This helped to confirm that the recipe compile properly.
>      - This also helped to asset that the problem was in my layer ( i 
> have created custom image & distro )
> 
> 2) In my layer ( image & distro )
>      - Clean all fontconfig & fontconfig-native packages
>      - Individually compile the package , which was successful.
>      - Reverted back the BB_NUMBER_THREADS = "8" from initial "16"
>      - clean the image & generate fresh image

alsa-tools is just the route by which fontconfig gets built, it has 
nothing to do with the failure.

Ross

