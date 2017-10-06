Return-Path: <mkelly@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A448BE00DAE; Fri,  6 Oct 2017 16:27:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.36.77 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 11599 seconds by postgrey-1.32 at yocto-www;
	Fri, 06 Oct 2017 16:27:23 PDT
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0077.outbound.protection.outlook.com [104.47.36.77])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F164BE00D8F
	for <poky@yoctoproject.org>; Fri,  6 Oct 2017 16:27:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=XOmO88dQ0tSHmDIl7XmgwCbtKtPoNg7rOGOKN0r85hI=;
	b=XgXdyrfUOaSG7+X94porEx0NZb4JUBv+60E+nVu5awUz0FJpz1P5ImaggC9vS4gXf6m2YXNdvvuof+wE89AgnRoFBKZGQEc/NekXRtKvno75DP7zWHyd4sH3qm+fw1O+odKFvL3F/mragbfakK9t9Mm1A3O/rySsgdu7smrLLIs=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=mkelly@xevo.com; 
Received: from [10.201.1.39] (65.122.179.226) by
	CY4PR0101MB2935.prod.exchangelabs.com (10.171.223.140) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.77.7; Fri, 6 Oct 2017 23:27:22 +0000
To: Scott Rifenbark <srifenbark@gmail.com>
References: <20171006174212.15669-1-mkelly@xevo.com>
	<CAFNP8OtfrEW4fyJBzc4vsBcyQ2T8ciG4b4orfCTww2j4bviV-w@mail.gmail.com>
	<1d859ba8-4bec-4879-fa44-6eac14be7435@xevo.com>
	<CAFNP8Otib0oGT_MUDp0cDeB2sibm4CgHkaUGvH2cAo6eiLXR7Q@mail.gmail.com>
From: Martin Kelly <mkelly@xevo.com>
Message-ID: <465f0fa5-ec85-754e-612d-74aa9a609423@xevo.com>
Date: Fri, 6 Oct 2017 16:27:17 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <CAFNP8Otib0oGT_MUDp0cDeB2sibm4CgHkaUGvH2cAo6eiLXR7Q@mail.gmail.com>
X-Originating-IP: [65.122.179.226]
X-ClientProxiedBy: CY4PR20CA0018.namprd20.prod.outlook.com (10.173.116.156) To
	CY4PR0101MB2935.prod.exchangelabs.com (10.171.223.140)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 29af72a4-d37f-43de-78b4-08d50d11cb7b
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254152)(2017052603199)(201703131423075)(201703031133081)(201702281549075);
	SRVR:CY4PR0101MB2935; 
X-Microsoft-Exchange-Diagnostics: 1; CY4PR0101MB2935;
	3:hjwfF76iTY+6Cm3TKvE9/4DvfMl/XwF7Hfd9K7gvn7fQsX3IOsityrOACdluyCyTI0xUDexhCzu5OOxROxC1yV9DL40AnW4GhLestgjD3biqorTdhh2PU6WB0qvmX8cS1M18JX0tu7pRwKVrcAdOJtryNInVj5AwvQ8qrbz6NnLDrPbfbtqUSUlQHyM5CfNLiKzfYcQeTqBkNpPPAsYSsO6ss4L1/sWNFennAFa7gPmjVJYLbnNcAbW53hp9YGFq;
	25:xm0Kxx3D0YtEH8qakCVsNEO8Xzoc5E0agxyX80gHt2WnlgWXLn2e5+afL1Lu6O1uVGIC2JPEFSj/TNLnwT8NtiGNC6oNBwNAa1mHdKCLQA1pmZtGH6YOdVSDQbXYvgqtkKRl4WVm4NWILD28W2dMV9FaBscpwsrFHthhQGb0EVAHWMfawnIEzbxXeZ2F/If9tFviyFsT/wKJTQWWbySp5v/yqlGDV90tPa7ONnHAt30Xh3b3fWOckJMmCSPZrHj6/4p+NVP1/i1nbHNXg97yKzG9Xu0nMdiKZM6Gf+cQA58dqC24xau5AcjWQVcMiZjgywVFK8qQqCq7TzX2MON24A==;
	31:bDfdPNXBZKatQPdBlsiEe9YL+UYa2GJ6LZyQpJwwkHsiM6RMxoMfkfbdNbXalLmzdZauoS7Sdp6xwsu1ZdurCutNrssgspIjyvfDkLZjbcKQYvf/BhiHpa3eOdg/comFGZx4+zSgQwH/oq/pNbTj8myN9moyR+fBQtyuwNZEJiwbYDJdYsN4h34tltpcU2KOO7Auo+/+uZn4R1vD1NjaZrp8DYZFzGDyoxAalarQ5bU=
X-MS-TrafficTypeDiagnostic: CY4PR0101MB2935:
X-Microsoft-Exchange-Diagnostics: 1; CY4PR0101MB2935;
	20:uIN7oqBFwfpfI/6vw2FTc9kBMpvtiGbcgj6cUwyBxxtzB31lxTx2DlU72HF4jOep6KMxHd7/3S7rqrKrSsx+Y7Knc7YFmx0fo1qocbFmouWSD1mZZDuAjUA+oMukIhDLNBw1mx7arMZhR96diJAJFuElMSH9NtRfS2mbYsVA8ZI37ghmgDAsw9g/aFXyeXnWmkFq5/yKA/ULiFyH8Hc+FkDvwbdTA/OqGiQqDgaNBEk7CSVR459J9NQN0hYn6aJ3YMNVl43Oy+2m8yGZbzalIMo5IFy3fiI6UjMrITrpYLsAVczi0XAB8XLY0tYBwzexO3ZIsB0SRpCPkXfXzJbE+zSU8mXPEMV00EU81BiCgMxafnh9gjYKeFRpSldTr1SKkKHkpqJNiZPy4vqrJJYwWGiKFaLRMIXCy1rtxasBQ1A=;
	4:SfCJKnXCpJY+vjti9HHEelbK0U13W5FOAq1GNCjMCpRNqcosbzw+IT/9vRYK+9wAAfD5TDLUO29Bf3GGmsAV+l9ltW37oLdWeCCuBb9VqmNzJZWQhpvUD3LIum9HR4Z/HX+ZfpWN6Ym4HHeM29nAY7lR+Kb3hEQc8NIOqEbHOzRjlCrh6FoNODihwPY/6bP2+Yfj96zgwtXJv60RpUacAQZC5mW2eaXnGmW94EkBUabRfuR01KpBJgWoqPE/o+3B
X-Exchange-Antispam-Report-Test: UriScan:;
X-Microsoft-Antispam-PRVS: <CY4PR0101MB293567505640C5194C4609B6AB710@CY4PR0101MB2935.prod.exchangelabs.com>
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(5005006)(8121501046)(3002001)(10201501046)(93006095)(93001095)(100000703101)(100105400095)(6041248)(20161123562025)(20161123558100)(20161123555025)(20161123560025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123564025)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:CY4PR0101MB2935; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:CY4PR0101MB2935; 
X-Forefront-PRVS: 0452022BE1
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009020)(6049001)(6009001)(39830400002)(376002)(346002)(189002)(199003)(24454002)(377454003)(65806001)(101416001)(1411001)(7736002)(229853002)(23676002)(6246003)(47776003)(105586002)(66066001)(65956001)(25786009)(33646002)(6666003)(305945005)(478600001)(6306002)(6486002)(189998001)(53546010)(77096006)(90366009)(4326008)(6116002)(2906002)(83506001)(50466002)(39060400002)(31696002)(81156014)(31686004)(76176999)(54356999)(3846002)(36756003)(97736004)(64126003)(2870700001)(8676002)(81166006)(16526018)(8936002)(2950100002)(966005)(53936002)(106356001)(58126008)(16576012)(50986999)(93886005)(65826007)(68736007)(316002)(86362001)(5660300001)(6916009);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR0101MB2935; H:[10.201.1.39];
	FPR:; SPF:None; PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
Received-SPF: None (protection.outlook.com: xevo.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtDWTRQUjAxMDFNQjI5MzU7MjM6TzB4TWt2VFNsaThGWExIMVpIMWJUS1V4?=
	=?utf-8?B?aFRxc3NZVVNOY2RsLy9sME1LV3NlS1JvL2FCY0M5aGdqYTBDdUxjUmt6Y3J1?=
	=?utf-8?B?WW0wbGhObEp6a3czUjI4MktEQ3pnYmZ5SjRTa1F2QXh6OExzdlRyYnQ4VCs5?=
	=?utf-8?B?YkxFY3cxRDdLem02c0xOcDFaaXJLRVl5NGtRYnl5V3BoT2F2TThKMXRFbm9j?=
	=?utf-8?B?Y2dDYkFadk8ybXg1aUdIWFZUN0MzazBleXNndUJaQWtKUStKVUlQMHBhQkRR?=
	=?utf-8?B?MVEva1ZUZDZvMUVycFBNNVpoTWtLTnlSQ2tScVdxdVlyVUt2akZNa2x6NmFm?=
	=?utf-8?B?WE00Ym13c1FNVlBLLzI3MExFbGhVcmFjVHBOU1pCUEJPRFloTFRONGx4a0or?=
	=?utf-8?B?UHUzLzhXeFZZSWZWa09NK3VUYWFkckgrY0xCSUU1RngzWUJtc3RQNGVrR09V?=
	=?utf-8?B?VmwxM0RKaW5peFMrMi9iY1lmVzlzK0pXRkhQNjBtUnBGOXczaVJwdVBZc0t5?=
	=?utf-8?B?MmpRbXBBZjEvZ282WjRYQURFalduRDhJQWtPZGdNZWUxenk1NldxVzBrZzdE?=
	=?utf-8?B?VGRsK1l5N28zbUVicitSTTY1K1ZQMkdaWDVKRDNJR0tnaUJLbWIyMnFSdit3?=
	=?utf-8?B?bmhjU3dyajVIZzBQT1R6NUJhekNQT2VRTGN2aHhkRnh0a00zYnFncHZyTWZs?=
	=?utf-8?B?WGJuRmdTUmlXMXFGdHV2eVdUMFpObitRcEVDVklKcERPVnFFZVp6cGFnVXps?=
	=?utf-8?B?WWM1Q2VlSXRJSFA5dVNwc2dRakVudDA5Yzk5ZzBuMmVjVXRhbWZYMURUUlNE?=
	=?utf-8?B?U3NVSVI1R0pubTgzT283UGhxT2t3ekFqd2VJQjlSM3ZxMzFmRExseWMxOWow?=
	=?utf-8?B?dU9ob2QreVRhZnZPS2dOdG1WMWY4eG1ja09yZ3EzYVo3SzIvRG1oRFhEV1kx?=
	=?utf-8?B?bUgzQVBWanJhOC9jWVZ6S2czSmN3K2xtZ2VrbFd5VlhwcUcxVFBqSm82WHBR?=
	=?utf-8?B?R0VHYTJDTW90SU40bGMwS0V4c1QvR2dzVmNncHRESHh2MzJWdVRoYnJVcXdM?=
	=?utf-8?B?MlhGbk9vZXN6UnE4Q2FHaUkzL2kxb0NtN0NLbS9CZ0xPVXcxQjRlQnpYYnBG?=
	=?utf-8?B?VUtwZ2poMTh5TlN3UXhjUWQyYm1xQjB6MlpsS3BuRXZnRzNraTlMY1dMYk54?=
	=?utf-8?B?NWFDM0pkTmVRbmRIM0hFN1pGaE5zVnBVRURHQkkwZ3RtYUtUYXU1em5nZUF1?=
	=?utf-8?B?S1JNTjhkTStoUkY1ZFVETlNDLzBuNk0xRi94VlM0bmZPRVhMc21hWmR5aW9T?=
	=?utf-8?B?ZXJ3TmhKdE1uWndoUlllSkk5Zk1SQ1BNbHozeWRrYWw1dUhFYXViWW12MUZ1?=
	=?utf-8?B?em1lajFrV05uYlZrS2t4VGpPaGs3eVV0dTcrdXUrV3B2Ri9Qd292RDNwano3?=
	=?utf-8?B?Q3kvc1NaNW51alRBWlcvVll0UlFBQXFDZVhlMjZmbU8zK3RBM0RWdTVpV2oy?=
	=?utf-8?B?ZkNLRVVOSlpZWEdyaVlIY0IrRGJOZVVsSVlOaktjY2NiNnZuazZ4eXgyWlMz?=
	=?utf-8?B?SkV6bkx3U0JjYk40R0tXOWNnenZoMFRCaG9DVXp1MmdEY0xjbzk4OUdTZnpC?=
	=?utf-8?B?d2ZCV0VWSnhmOWttNTY3clBXN0VaQTBISGt0OU0zME5FMVpSZTUrUGtHZE5K?=
	=?utf-8?B?ZVI3RmJCckFSdTVHeFpvQlA5NjBFSVZFVHFycHcyME5mcTRpQ2lwZDJJeVlM?=
	=?utf-8?B?alUxeU9KdXlkcGUxbnVKcmZGaTYvZ1dFMEIrcGIyelp0WktOMHoxcU1pNS9t?=
	=?utf-8?B?YysyNzUzRWplcm1WY0U1VG1EeTB2azRHMnRwWWd4Z1ZIQ2VERE5KNlM4OUli?=
	=?utf-8?B?NjN5alRrSzRjcTJnLytDODJKSjlsMm9UYUx3V1RERHhrT3BhNnJOOWROb1l1?=
	=?utf-8?B?ajk4dTBpWm03bUZETHVzRzVlMHkzdkhuK1UxQmhydytMVGk0SmVXeDA0VzJ4?=
	=?utf-8?B?T2V6V3hWYThPdEVwRFlDSEZ5Nk5LYmxKaUp1WG9BPT0=?=
X-Microsoft-Exchange-Diagnostics: 1; CY4PR0101MB2935;
	6:h2Qs61+rSHAU7H9dh+EeQxYimEG0GGFYMVyrWNG5QlfPQLADah9hnEZig2sFlaKPppIMiqooh4LGXbaFcHabcCKUDUSvPhZsoOuFC4Bnjdi0sSPvD+6NpahkQiB14ig/KaJtXjDeNH63O7MZaMTcDedLDp7qguILQaFFzGaX5r8LpHYR3I293xE1BmcDKPVgYIKtPo1+dhGeQJMOvGa1jX5hpCDemohHGtSX3qMkYq2aTHadTEDV6++yOXVJktccI8w0wquJN4IDMxSj96eVk4iKM0tBoX5aXvAOBtnI8ApMT3s/SQc6/73wGsOfhDMeModmvm8TknLohdzKftp3mQ==;
	5:RyJioCSqn8NeWo/GAFdL/3vqUmJg1V4KHpOSxYec6HERrbZ/qzZO8/ApnWf/B/uSxnSUvkhtShJqgvERTzTnilwyVArf63zcQogQ+Ki5hhdNzG96sywxtyyii10VwZx5GKiZOV6+tHZptB9YSfc+4g==;
	24:Ic5OSD8MJF963oHpGR/TGu0yvJY61MxUQxBdw7ZIW3xLQoVCDwS9CGdeHNIuc4o8V4sYFZvUzAaT7UrJP56n+ECyZDzNKY9zLYv+0OWqhbk=;
	7:2oVcS0KT+TKcE1IkrMhtoGTKt9OoeJ9iz5iYN8u0JqFj1zA5o5yG1a6Y/FJmWK+9DMumoJD/LneJRXh5SVQEBHBSK/WM5gddDM4bVdo6qfSKtIy5esLkL5bBc6q8X4HSNZn6GvG2fhhozRqopW2SxWxEecqkXja88ivSkQfe9xkHZ2jWpo+Lww426EW2ABnCv3RvJAdD/eeMCjcxhFWdQv12ayLfmJj90VmJNYXmM4c=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Oct 2017 23:27:22.1014 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR0101MB2935
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] poky: add debian-9 to SANITY_TESTED_DISTROS
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
X-List-Received-Date: Fri, 06 Oct 2017 23:27:25 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Aww, just as I was getting ready to try the coolest new Dibian Linux 
distro :P.

On 10/06/2017 04:23 PM, Scott Rifenbark wrote:
> Unbelievable..... fixed.... thanks
> 
> http://www.yoctoproject.org/docs/2.4/ref-manual/ref-manual.html#detailed-supported-distros
> 
> 
> On Fri, Oct 6, 2017 at 4:15 PM, Martin Kelly <mkelly@xevo.com 
> <mailto:mkelly@xevo.com>> wrote:
> 
>     Great, thanks! By the way, looks like there's a small typo in the
>     ref manual:
> 
>     "Dibian" --> "Debian"
> 
>     On 10/06/2017 03:41 PM, Scott Rifenbark wrote:
> 
>         Martin - Updated the list of supported distros appropriately in
>         the ref-manual - see
>         http://www.yoctoproject.org/docs/2.4/ref-manual/ref-manual.html#detailed-supported-distros
>         <http://www.yoctoproject.org/docs/2.4/ref-manual/ref-manual.html#detailed-supported-distros>
> 
>         Thanks
> 
>         On Fri, Oct 6, 2017 at 10:42 AM, Martin Kelly <mkelly@xevo.com
>         <mailto:mkelly@xevo.com> <mailto:mkelly@xevo.com
>         <mailto:mkelly@xevo.com>>> wrote:
> 
>              I have been working with OE on debian-9 for several months
>         now without
>              issue. In addition, I tested a build + runqemu for
>         core-image-sato
>              following the quickstart guide and had no issues.
> 
>              Signed-off-by: Martin Kelly <mkelly@xevo.com
>         <mailto:mkelly@xevo.com> <mailto:mkelly@xevo.com
>         <mailto:mkelly@xevo.com>>>
>              ---
>                meta-poky/conf/distro/poky.conf | 1 +
>                1 file changed, 1 insertion(+)
> 
>              diff --git a/meta-poky/conf/distro/poky.conf
>              b/meta-poky/conf/distro/poky.conf
>              index 5b8eeb2..6d365e0 100644
>              --- a/meta-poky/conf/distro/poky.conf
>              +++ b/meta-poky/conf/distro/poky.conf
>              @@ -75,6 +75,7 @@ SANITY_TESTED_DISTROS ?= " \
>                            fedora-26 \n \
>                            centos-7 \n \
>                            debian-8 \n \
>              +            debian-9 \n \
>                            opensuse-42.1 \n \
>                            opensuse-42.2 \n \
>                            "
>              --
>              2.11.0
> 
>              --
>              _______________________________________________
>              poky mailing list
>         poky@yoctoproject.org <mailto:poky@yoctoproject.org>
>         <mailto:poky@yoctoproject.org <mailto:poky@yoctoproject.org>>
>         https://lists.yoctoproject.org/listinfo/poky
>         <https://lists.yoctoproject.org/listinfo/poky>
>              <https://lists.yoctoproject.org/listinfo/poky
>         <https://lists.yoctoproject.org/listinfo/poky>>
> 
> 
> 

