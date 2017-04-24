Return-Path: <mkelly@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B24AE0094C; Mon, 24 Apr 2017 09:04:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.42.41 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam03on0041.outbound.protection.outlook.com [104.47.42.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76D22E00839
	for <poky@yoctoproject.org>; Mon, 24 Apr 2017 09:04:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=ljTZiMTelRF+DwkjJllMoNnAagXuPUGJCDslNXMsaC0=;
	b=m5ZH8O7Ia3NZUN2pIPMf2LphO59ZhgE+2ASmIq1yvWdwdIHxnTYLukDR9zDNTu+xuisLAbRxo3359ehMBXypIRHi4+PpgvZu0R3YW1zTuFj8Cj9gS1jYPKYqvyPwZuUucc1yy2I0ywwddBF+EWPwnx6ITM14IRqumbr75BXgzdw=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=xevo.com; 
Received: from [192.168.1.2] (67.171.33.217) by
	MWHPR01MB2686.prod.exchangelabs.com (10.172.165.12) with Microsoft SMTP
	Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1047.13; Mon, 24 Apr 2017 16:04:38 +0000
To: "Burton, Ross" <ross.burton@intel.com>
References: <1492820479-2808-1-git-send-email-mkelly@xevo.com>
	<CAJTo0LZzqY+=b2r-9HOBepR-_bZPnXHA0NQn-5v5K2UhhasiLQ@mail.gmail.com>
From: Martin Kelly <mkelly@xevo.com>
Message-ID: <4af911f9-f4c3-6ab2-cf2d-b7d2264a79d4@xevo.com>
Date: Mon, 24 Apr 2017 08:59:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LZzqY+=b2r-9HOBepR-_bZPnXHA0NQn-5v5K2UhhasiLQ@mail.gmail.com>
X-Originating-IP: [67.171.33.217]
X-ClientProxiedBy: MWHPR11CA0004.namprd11.prod.outlook.com (10.172.48.142) To
	MWHPR01MB2686.prod.exchangelabs.com (10.172.165.12)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 77c32766-1f2a-40d5-3c4d-08d48b2b9c1e
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201703131423075)(201703031133081);
	SRVR:MWHPR01MB2686; 
X-Microsoft-Exchange-Diagnostics: 1; MWHPR01MB2686;
	3:BXuSqtw//CUrJ4ojIapKKKBAWZE0gY0381WiBnsz4NK8mYQy6Kdm9OHJuWDyNqYC22ZDpwqHooRfzFq3c3PbA4sYn5LbyyMTboOW4+USFyZ354l/Notrfe/m6TowfvIh+8woKYN2OhX+CfO8jxpQmLrRSYqkBScffyutkmBA6018eupIbady5KZdtbuWAVC4JxwGEG9i9wnZY97+tery9HRm6eTZb6N2pznIsn1smbAPDtAPhzH5DOD2CYEBVAU+8mqyvmAbR14F95W6lY4TUPorYiUGr49O57S402vWGD+6SC78+2F1D2/sydNXT4d5DKtsXPmdaiSr+1/RxgiygA==;
	25:h8YzQQrRB1ZGaZBqsBymWUcCNm1O8Xqakzxh2HVuoAUwpKGfD6fzsHHxSe74WHDI3ZhOUVO/1TvH3uaHDzexUHYLcR/n4kRtuxA9QzRrUR+tVaHqH853BRDpFaa1PHpetevXoQq0+FIe+Nh3nnXP1YCUPAveB4vGmEjZ92ic6KUCISEfO3MPmS9fcg4c2w3eaXlvh6h+lDXOILgvRuikKg3H0BQPbUARKVKJ2clYjGenXb7Hyu/yivgKrnf+Ypo5N9eChwonE0Wtqs+F5wyykPfBw+aKWlxXIN5B9fNlPp02XlYXSMHQaTLCFugFVUowYonhxKAC0yDfcwhbD/505KgCwhoKd+vFReSWYa6q3nudnOw89IGM9C+UT/7DLDmO0W1Vexqk9glAOXWk22Ng2mgikSewjoIQkdEM2qFAeZ00sedxEPNULZX8vCGBT7T+MQqDflMrhcnp09neN9vTfQ==
X-Microsoft-Exchange-Diagnostics: 1; MWHPR01MB2686;
	31:IujavLc2adXkicVfKZlHl1mkwv/62ZoVuOKkTjskkshyrAPMAg8hoZwXoyhsbsJ06hM3otGg5RJsDme1FwroSfQW7cfYCFg4RBPWL+gfe1bu6c6WH36ISQyE4LZxuSt7lVxoN7riLmF1j4c2JzxKIASHhOuZisDbBaXcRprN3a+PLAqlfKbaqAzJ2qOjH3jWvU80wQp5/t0FggN5tRf73o9bZEHSp8BeNByXjKf5qYRBDIZ63+CVdBGQsTR/pPe1Lba52ns2Ddd3+f05spFCpw==;
	20:koBjDuyJO0pPygcFlE6RtAP7x0+utNqWajfSWNyVi116AHmHdWMlvx7D8GeLfrTsaHPZj+LoczikV2xrxrR/d8xkN+OCHblKDcvwqj9CmNRH2+qMF5A0/Fcdawt1nH8PYocq7C14bo/4LqUfqTcqD/XFlSe8Ksi9b3YqS+G0g08HN0myNk5RVDP9Z8PDb2kYdMX6Q6iE/zv1T0ZGIWPGO/B4GbO2MZuugYVM6aZtIT0wY63EkO+HwkKK3M7c/YZM0pGjx0uGEonPJXkUAFVlfmxMaEsXAzv49YMo3mkM0I9EoOBTin91MgcD4+hyibuTxUUeEKvSej7HPzSUD1ki2Q==
X-Microsoft-Antispam-PRVS: <MWHPR01MB2686D53C252F6C0DE1098967AB1F0@MWHPR01MB2686.prod.exchangelabs.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040450)(2401047)(5005006)(8121501046)(10201501046)(93006095)(93001095)(3002001)(6041248)(20161123564025)(201703131423075)(201702281528075)(201703061421075)(20161123562025)(20161123555025)(20161123560025)(6072148);
	SRVR:MWHPR01MB2686; BCL:0; PCL:0; RULEID:; SRVR:MWHPR01MB2686; 
X-Microsoft-Exchange-Diagnostics: 1; MWHPR01MB2686;
	4:RL3SHMnXWx46eiWpXPAeexdfyXw1F9DpPMV9SkVwAodVwo4iq+Fh1rjYvlFvjSQkI9ndN3nY6S3HlPZ38QpNsg6atJjfQchEuG1FT9TSBXjrhycdxRY8Y/4wC6CEoxkmVdWVq2Wr7V0HtDP3nM+7vZ+qwIyF3Np3XnT39/A5RvlrGHaYI3C28FkJ/QqbrkTI7llR9yU+d3yq9dqZsBE5RZR3VSzosniuHOblp1jo0KiumQa/PAle0T4o63pNqTJpDS76lSWTdZrZiNoo4dO3Hawnlimi9XbbN69rtzh9HKxuse5HrfSNCH80or6KkCdBGglv8dVtK8XEkkLBQknlm32MSTZ9b5nhyeYyz8rlZ+XnBksXLJeJqYueAVAigw/fs2L74VvQh83pLR/6kfziAGkn6IXZnhIq123i/V7ksHvcHZ53HZ9fMPkYtuxsB5xCEtCfeS+zRczNaeq6R8957EL+yvdnePHOEPuCs13MNVrqHiA3qVAiEDAJtD/5BLO65Ef5rDzFzdX8wFoifHQhYqd4625RI+NCU6n/R4UPFGmLoOIMqQUq2m2xGMestZNIyE403vJ/UzyV9CWWkd3AUjnvilmH0NNszTH5v6vkWNIaYcDrGQaBYoYZ4yXlIVMkbSC2PW5cEX3OTXGWdoJ/NyyDwk6GGz0M1nmyTP0O9+dD8ER59eQHsX42Kpj+snlK4b2rzEJfNNkzq8opf2Tmmw==
X-Forefront-PRVS: 0287BBA78D
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009020)(4630300001)(6009001)(6049001)(39400400002)(39410400002)(39450400003)(39830400002)(377454003)(24454002)(50986999)(54356999)(76176999)(53546009)(25786009)(6246003)(42186005)(31696002)(86362001)(81166006)(8676002)(4001350100001)(189998001)(5660300001)(66066001)(6916009)(2950100002)(6666003)(117156002)(47776003)(36756003)(77096006)(229853002)(6486002)(33646002)(53936002)(7736002)(90366009)(305945005)(3846002)(2906002)(50466002)(6116002)(4326008)(110136004)(38730400002)(83506001)(23676002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR01MB2686; H:[192.168.1.2];
	FPR:; SPF:None; MLV:sfv; LANG:en; 
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtNV0hQUjAxTUIyNjg2OzIzOlZQVGFGMW8xbU02dmJhRlo3YVU1b1QyU3pT?=
	=?utf-8?B?MmpscWlJY20zWFpSa2djcGhGYlRzU2crdXVmUkdpNjJhdXlISWpBQU83K1F1?=
	=?utf-8?B?a0VMWUlEenJBSmNYYk9ERFBsOUlyNElhMmVJOGp4Tm9JeXE1QXZ6RUpMMk4w?=
	=?utf-8?B?QW4vQjJqbGFRbmtIajhkcmtqRitaU3NmbEk1OTRtdmh0MFpCYmkzZzJlNHVX?=
	=?utf-8?B?OUhWQXcwUTJlanhFOHlNMTExbklPcHFLWmJaVEtaTzlPeVlreEV5Z3dKSHRV?=
	=?utf-8?B?anQ4WW03QVV6QVdpank3RmFrcEpHQzR4a3pyejVsR1ZENm40UHRKWWlnSElH?=
	=?utf-8?B?SWpDY3ZhZWVTL1lKelBkV3hONEJxaElFYjV0SW8xRWlDUHVURHNKYmg1T2NX?=
	=?utf-8?B?MFE4SSt6bjZ3eEQ5aXZudWJWclpqMFNxWkJTTVpsYXhNWWk3WTNyNk9nQjBX?=
	=?utf-8?B?dDdKek1UZzFmakg2blBvaTZKWENuSFBCRXVNVnFwYzNZVWtZUmtWSmhjQVN0?=
	=?utf-8?B?eGhCQXJYUHRuNGJmUEpGV3BBY3Z0dXNBcDRhdHkzaGZ4Z2sxR04xL3kzajhr?=
	=?utf-8?B?UUhFSUdWR0FVWlRKbEQvUVB0U1hWNjNLZ1E5SWR3ajNsRHE5YUZKRE5CQ1k1?=
	=?utf-8?B?aWhkVW5vOEZqb0IzMndPUG5Ydmo4Ny8xYWpZL2l1WWh5dHlHamJVZkh6U1pH?=
	=?utf-8?B?bWFRYXBMTVRZYm9YaGZicmNIVU5XYUxic1hMT3ZUcEpBSlUzYk05OWR0bXcz?=
	=?utf-8?B?dkZ3V1Q5alhlM0kwZVRmVml1ZkM1RnMzUXM1TjJGQjJJSlk4eTdXaWxocDRn?=
	=?utf-8?B?WG0wMStONTFvK2hza0c1WnlUaDdJV1U0TTNIejVjbmx3ODZWNmFRNVRXbWU5?=
	=?utf-8?B?M1BTUFRTVnlWTDdQeGRZWlAwZlk0dnJyQlhNbThKN0ZDMWxzNU1taCtTaERJ?=
	=?utf-8?B?NERwSmpMV3dpTnQyZHYvMnBvTGRPMllaeG5CSG9Lb3Z6VGNMNXFMU3JXazJQ?=
	=?utf-8?B?OHhRZEJMOEE5UEkyWk1YQTVTa3hhSkZkOXlDOXpmSlI0Y1orVG0wWk9ESkZF?=
	=?utf-8?B?REpVODFjKzBpQnRkMEgrRW83UVRlR280ZURaaEJYZUZvYno4bUlJL3Z1aHhT?=
	=?utf-8?B?Y0tCODVDSEswdFI1ejhnWFFybldTZXVBa3d4VGZOUW5vRjBTMVgrNUMrN1BK?=
	=?utf-8?B?Tm5IVlF6VVl6TW0xaTNaemJlWXZ6SUYzVXFEczBlS1M0L1JLK3pteFNXSTNJ?=
	=?utf-8?B?MWxLNncwZFg3bVVhSVZqYkNQbWw2azNxOTJiMTdqdy9XMUwvMEg2NmErM05w?=
	=?utf-8?B?MGF2RE52VVhjd29zcjMrNmVBYkt4OHhzTzlkQnIwb1Qwa2xPT0wxN2ttSGFJ?=
	=?utf-8?B?dzh0bGFHeUpZcmlKSVU2c0lYaGJuQVJTUjFQR1ZLSmtYaWk5SUNKc2s4V0tM?=
	=?utf-8?B?NDdEdTZRemNXb3MwenIrdmZaY2pUSzh3bVQrNXlhWTZ6TjhRWEthd0FwcHdG?=
	=?utf-8?B?N1pmUll0TlU5K2dyaUI0dXcwTU5FT3lRcWxSSEFCdGUvT2RRQWNORXk3c0Ri?=
	=?utf-8?B?VFhkd1NwdWZSc09QdUQ2ekpVVjd1VkE9PQ==?=
X-Microsoft-Exchange-Diagnostics: 1; MWHPR01MB2686;
	6:4BuG53yPsjTre44b+EUvYN8+NNACTnOvMAbGgg024H6IQdQ4fmdyW3Ly8sTuIgN76BI5TaR4sxbMJ5JAY44Ido0BIJcndDYYOtKV5qLLl+95fDGlzExYTt5sZspG//QTaoYJmks4Y89vkiuF3idR0X/Pk3dH3jpXDyZuxoNxoC0S3iItucASN67QAbEIQ9P8sC86bPxlXMaYFXGNHEHcKy9tnoBrx4VRuUriHo418YmQTdzUa3wpqCKGiG/A749VV2wNbcXkmH2Ox3+vcjDSr/BCk5UntuJgvRTVtqoDsze+jxNeZyEZhyUkeyZBCVPM1q6oIn+1U5Quy8SGtcA+idvxeFif/kANAmZh94Hf5KNNx3TgUsd5fyyKN5anqwNePQBfybsPUPjLhd5aO9MTpqyzZ7obiKBZOK3uulmCsbNfZyMRL3aa6pFtluAI4wbRk5QHgciPp4OuRHxauPaI74zmuydNq+pqg1ZgMqMlK5/TVRV975bAA7oAKIaw11Fwa2RNlFXKrjb6zv2S/KHLvA==;
	5:b9Th3wmZKWI2wXzKqnEBYNH/CiVqtfhl4iUsJ0FCngdK52mv62vRDRIt3uGRTeXX2U+INisIJhbQeouWC0EZmm+NnCaVksq83wLAwkZutpJv47Km723DupSDZC/d0/jepvpPFb2k96wV6zIC3uhTgQ==;
	24:c/6Ye/g/WWVyMZ504cO8qCEGZcPfsr/MqYN8Zjcp3g229E2RYBQMjlqlcOPBBcwtNSfUnTC/32tYkwciZ7uOOQMpsevuNT/mJcBF/EVxWYc=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; MWHPR01MB2686;
	7:NkL6MIc33QP6U77wE/imnvqZ2AkelfuzIm/EXpylx1hWn0Wbs8qIlAx2edw9XQN8S854FzAuuaNu3mk0nvYrS4Y8Nyh9y1PKgbswrDSVLRUHhfV6brID4So/F10X/Gxitspn2vBltIhQtt4AN3/08MU5fiToEcbi14FjRkDZvElnYhziWJw2SYNbo/fKikvWuf6l3ZZb69yjUYosJ87+JhnVLnS2ouf5D3aupAltiCaO3iwp/0sEc4p9GpnXJ5BGwUn3au6xMZ0af9d+jj2fAT21xKo+q1y/bcnH4WCR1eyYt6WRiYDavRJ5mR/R/SDzDSTYAjUdxJeb9LSwPoYl7g==
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2017 16:04:38.4313 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR01MB2686
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] qemuboot.conf: make cpus match built artifacts
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
X-List-Received-Date: Mon, 24 Apr 2017 16:04:43 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 04/23/2017 12:50 PM, Burton, Ross wrote:
>
> On 22 April 2017 at 01:21, Martin Kelly <mkelly@xevo.com
> <mailto:mkelly@xevo.com>> wrote:
>
>     Currently, the qemu CPUs for are specified as generic, but the built
>     artifacts are not. For example, we build x86-64 artifacts targeting
>     core2duo but run them in qemu with generic qemu/kvm CPUs.
>
>
> What MACHINE specifically are you referring to here?
>
> Ross

This is for qemux86 and qemux86-64.

