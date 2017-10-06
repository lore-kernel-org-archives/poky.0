Return-Path: <mkelly@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1AC7E00DAB; Fri,  6 Oct 2017 16:15:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.41 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 7309 seconds by postgrey-1.32 at yocto-www;
	Fri, 06 Oct 2017 16:15:48 PDT
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0041.outbound.protection.outlook.com [104.47.41.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E19E3E00D8F
	for <poky@yoctoproject.org>; Fri,  6 Oct 2017 16:15:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=R1NLCik1bk1fV1HyWkCwx+ujhvAyYs71dDNg/gMf2rA=;
	b=fx6U2Pm6hN7SoxBogDwXOg/k4JRrKhdTFPQQdRGXSWbyrouHEcLEZ33GfEReeZCcnrUESJ/bZB/B321RCHQT8eyVw/5KNIaDoEA9K9EP1k+HbisJjbWeNshnUXbwbZGT6AXdgONBidyueWGrKUlojRfWcAeYCtBjYArtC3FyrkE=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=mkelly@xevo.com; 
Received: from [10.201.1.39] (65.122.179.226) by
	CY4PR0101MB2934.prod.exchangelabs.com (10.171.223.139) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.77.7; Fri, 6 Oct 2017 23:15:46 +0000
To: Scott Rifenbark <srifenbark@gmail.com>
References: <20171006174212.15669-1-mkelly@xevo.com>
	<CAFNP8OtfrEW4fyJBzc4vsBcyQ2T8ciG4b4orfCTww2j4bviV-w@mail.gmail.com>
From: Martin Kelly <mkelly@xevo.com>
Message-ID: <1d859ba8-4bec-4879-fa44-6eac14be7435@xevo.com>
Date: Fri, 6 Oct 2017 16:15:40 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <CAFNP8OtfrEW4fyJBzc4vsBcyQ2T8ciG4b4orfCTww2j4bviV-w@mail.gmail.com>
X-Originating-IP: [65.122.179.226]
X-ClientProxiedBy: CY4PR18CA0039.namprd18.prod.outlook.com (10.173.177.25) To
	CY4PR0101MB2934.prod.exchangelabs.com (10.171.223.139)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ae3a0d9a-6ef8-497b-5b6b-08d50d102cc4
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254152)(2017052603199)(201703131423075)(201703031133081)(201702281549075);
	SRVR:CY4PR0101MB2934; 
X-Microsoft-Exchange-Diagnostics: 1; CY4PR0101MB2934;
	3:VeB/2ra983zXD5raB+hZ7PZxLr2amY4/g2T1uTC5u4Ya9N5bi2/2Ljk4PdvhKGtIKbAQUVNqq7tC1KY3WIRtzSJ7Szk4OLxYHrTq6oAuqJG9IyPSFxgSYmZtDzJTzA49j77Ujl0dBaOweZ7Uj5hHNKJ406SVT7tJxlakBd6uEu+WK0dHWCEr9PzOpa90jRxXSmV3IBzYEgOFrfkWx7ZC6FlUm3wPSSjLQWiSiih+hUQfUcDeMRUE2MddOVkfXv0p;
	25:5S0OAx4/AfLySBTBDOtsAQQg0NYLm3uV+IpdBw3Vj1M68C5REdtm+gg4hIr7GJQw/wMVFLVCRGeiwwbei01EnIwtveflEyB8uHKbkCic8k01cltEnKiFpihpq8SaAZ4zdCydyScM0d//VyMNUzOFIzqk4egw3F1oeSbT/kwpab9CrwiawstnR0VfWL14kpaYsIUFYByRXjMTkHWi9ESZwPB+9Tm1V3dI98GrEZwZe6GKAsDm1Qn0OGoSNjKeN2bpyb6QBkdJV9+EmfqFbytHxS0TppdklY6LgJeg6QvsITU6RQpeG9d1LLXqdXERtzAIk7yctAyVCnnHVVIueYb1+Q==;
	31:dyRGzc+b332F26pnaHlRoiPx+HdaOTmQeAO9fSQPP4Ay/eBmDK5NARiXwOJeKrS1Xcmf+sUhlD+YU0gTFhAU0XFAk25gq6UDzdKVKF5gcTDUIo23nMM/AP5bu8X3hwGX37vXhqn6t/YC7JBHGQVEBGJTwnhBaI3F0O16E2fpQeMVcSv+v3tO3Eg9PX2xO1byEPgDMvnWwGs/RD1C+1Lm4R03AVpT+sw4FTk8QtjqS90=
X-MS-TrafficTypeDiagnostic: CY4PR0101MB2934:
X-Microsoft-Exchange-Diagnostics: 1; CY4PR0101MB2934;
	20:RVW+mCEiSdGFl4ctqUvJul7STztGlsd7gGshd/n6JSkAFO9V2BqQ88noH2UQqgauxtjSkqeKTl7QWp7tU4Lyab+u8vSd3Tzi6elfRiKpqL2VdV4TfCcvv/jhG06Tsm9V8IyIcTPBDrI0bcThJivcVnerKg2LIT8QZTGXTYq/Dvj+I7pkjvjv9QYr/XX8ZIwWmlwfFs9l1gD0nSfFN6K5RbKYo+qwdgsc/8scV37yRXtK66iNrwP02K0ivOgiPZ+XKiSGYUD4bCyOfSJ0zU8dnr0C7SRACxNHet/bSqALODb2y01MSpGnp2DjE9J07CFU8ujzN0xEx+ih2OsCOJKQWU0wRoiRNFclBsSDeGR9oNe9lBsg9zwhCjbtnSjVCJw5Iz86d/0ZEsbwGjeRyzPTYCmoH+twPRXexgum02ge0Co=;
	4:Thfv2gtOZ/GY+vfiVaEJdjp9l9xyt7KHU1yMIxijMaEsFMHPbWdEeh8GU4RBgf0HDdRGjJLF4vKXzkgJXtFXYeOXmTJKWN3g7A61NPxiowv9pF0FMRO134Ku6R215ZRgZDBO3X88Rn26VM8OL2ZDIA4sWCJ7JGpHnwfvThtw1MtBRAtmk8uCX88pbB0VbXNOjqc6ow9nKJLbPQA/fkNA0ofrlu+XyBMYi5aKGH5xfE3pjuEAubZLySxa1JbQxB4h
X-Exchange-Antispam-Report-Test: UriScan:;
X-Microsoft-Antispam-PRVS: <CY4PR0101MB29347271D43C02401F41B4D7AB710@CY4PR0101MB2934.prod.exchangelabs.com>
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(5005006)(8121501046)(93006095)(93001095)(100000703101)(100105400095)(10201501046)(3002001)(6041248)(20161123562025)(20161123558100)(20161123560025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123555025)(20161123564025)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:CY4PR0101MB2934; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:CY4PR0101MB2934; 
X-Forefront-PRVS: 0452022BE1
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009020)(6049001)(6009001)(376002)(346002)(39830400002)(377454003)(189002)(24454002)(199003)(66066001)(64126003)(77096006)(7736002)(53936002)(81156014)(83506001)(8676002)(478600001)(90366009)(4326008)(105586002)(39060400002)(81166006)(6486002)(189998001)(25786009)(6916009)(23676002)(50466002)(3846002)(68736007)(6306002)(16576012)(36756003)(8936002)(966005)(6116002)(316002)(53546010)(2950100002)(2870700001)(54356999)(50986999)(76176999)(6666003)(86362001)(47776003)(65956001)(106356001)(6246003)(31696002)(229853002)(5660300001)(97736004)(1411001)(33646002)(305945005)(101416001)(58126008)(2906002)(65826007)(65806001)(31686004)(16526018);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR0101MB2934; H:[10.201.1.39];
	FPR:; SPF:None; PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
Received-SPF: None (protection.outlook.com: xevo.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtDWTRQUjAxMDFNQjI5MzQ7MjM6UzNISUdjd0gvMm9wNlNNOTdrT2VLcUJL?=
	=?utf-8?B?cHh3S3NXdFljVVlFUHRiQVA4VDlTUWJVaHJTVHMvZDlkOStyQTJnVzVYWi9C?=
	=?utf-8?B?aGdUclczSW1oRG13MFJ4U1ZCc2VsdHdSc0FsUzNYd1gvVVVhSDFpOEErcDgw?=
	=?utf-8?B?L01YRUs3a3JJMTJPekNoSE4xc3dVSzJxUGs1dG1qc2R6TklZNlgxZ1RVY2ts?=
	=?utf-8?B?NUllODAvK0ttUkUxSnJueld2VHB2M3A2Wis4Z0ZPU1g5RjZqdnhFYmsyRS9o?=
	=?utf-8?B?Q0pPSVJpNkNOZTVMM0pqSjNWTlBpTjV0bHk0L0tDQk1yeTliekVpcGZ4ZkhZ?=
	=?utf-8?B?dTh3SnhCZUs4ZWxEWEljWkltelM2R09VdFpQY05GTmV6QVpDQ0N2NmtkdXh2?=
	=?utf-8?B?WEZNclNaaS83Um5kVFdVM3U0Y3czd1l1Z1NiRmpvVVNoTHJqNUJ2aUdzNXZv?=
	=?utf-8?B?bXo4ZnZ1OVVXRTJCVlNnK2oxSzNxRDJvZTl5VEhGSGhNSnJId2l4NU9JU0ZW?=
	=?utf-8?B?cWVlZ0NrWG52VW9KN0xiYUZTWDNKSVNwMWx4cmNBNjN3YTFPZFFEa1EyNENY?=
	=?utf-8?B?c016WlJJSGVIU3BTbDZ1RS9VYzBCTFJnZEVvVEp4ZDcwRU9aR1liaFRoY1hk?=
	=?utf-8?B?ei9MdUdpZTVRNDAya0xLd0N1Sy8xeCs0anhrbWxmYVRBUGZmeGZPM0xtQTE3?=
	=?utf-8?B?V0NLZkwvb0lwamQxenp2WUh3MjZUN2lpSGh4WTFRUTdnMzJScTMrVUlJdkRH?=
	=?utf-8?B?ZzRtSlN4dXl4RzI1Rlg4bmN2ZCtVSU04RnZseHlNTU1JdlhUdVI4M20yWmJ1?=
	=?utf-8?B?MVlhWGJWb0o2NEprZVJORnQzS1NGOEdzdjZPNS9MREVpRzVFakljMU9rN1RQ?=
	=?utf-8?B?clpaSm4yaXVDYWVybnQ4b3Y1NUh0UHNYeC9rdGx2NUd0MjFmeGRYcVRlbTB4?=
	=?utf-8?B?K3A4R2RvemlXSXRzWERlVHRCT1RFOTRlWnpORnNnZ2d3U1J3UWZDZWdMSCtM?=
	=?utf-8?B?aVFUM2svN2pTaHVuNTluZ2JkYTZZQ1ZtcjNYaStWSFRnQ1JUeEFDUWVsTnFB?=
	=?utf-8?B?RExYWGozR3VpSFlzTHp6dmV0WjBQMGk1eVpqY0hoaHpqei9uRnlVRHNLMU1I?=
	=?utf-8?B?Z2NVVUJ3RUhLcmlXR3liOXJjL2tVaE5nck1wLzBHZDRPMWFJckM4dVE4QW00?=
	=?utf-8?B?ZkVxVSttWkZPVWhKbitidXk4SS82aXY1YktXd2Q2bEpNbHdzRWpnQTBrRFlj?=
	=?utf-8?B?YmpVdmVqM2IyUEpxV1IzU0pyMzNvZGszZ1czeDdHazBsWW5LNnhvQmhsZlJS?=
	=?utf-8?B?QVJjOFFzTHgrOVBMbXozL3A1TFF4WHN5cW1SSW5NZ2pDcTVNaFRkY3RzMWJu?=
	=?utf-8?B?bXk0dFEvRmw2VFZlWFlsY09DZ2M3UFR0NHhkSkEzWjFtbk5nRVRLb3lSZU40?=
	=?utf-8?B?MnZFNjBHQ0hWb2pOcXVUcGtwOEFYU3Q4V1VFTlJzdEI2SHRTZFRiYWNHb1gw?=
	=?utf-8?B?Wnl5VC9uMGY2dVE2OXMrQnRSWUkxRjcrRHh3MHVMNlZQem9MSXJTZzJRSlVt?=
	=?utf-8?B?TWptaWNlYllFaVlNNkI1Nmd5ZWRYZ3loQzkxdXJ5ZE9nYnhLUGFuWUdPSzY0?=
	=?utf-8?B?bFJBWnF3RDVUNzJ5WmNYV0Q5aGZUa2dzOFlqdnBTUWRMU3NXbWZYQkNGZlE0?=
	=?utf-8?B?blpWWWNjTmxSQ1BycUgwV2pkMFloNUNLWUxxWVp5aXl1NEtBczNkcjQ2b25U?=
	=?utf-8?B?ZlpuVDlvSzJKOFNFL296UWg3d3ZtcXdLUnN2OGYrMEE1YmN4TFp6SnUrN0dS?=
	=?utf-8?B?bkNnUHJSZk1EdmF5eGhXTzFxNlpTb3RpU0EydzRwTlBCVnNRRlNKbEFuZndL?=
	=?utf-8?B?YUpLQm5xQUR5Wjd3VGpKTHZYdWZ6MDlCa2wyanBNdEZobmYwb1lmbWMvTEdZ?=
	=?utf-8?B?dS9ZcEtKdGgwbGJKWHNJdGtpeHdKMHJ3UGVOcndXelBUTzZZQ3N3b25WeFpR?=
	=?utf-8?Q?peHLKZXt?=
X-Microsoft-Exchange-Diagnostics: 1; CY4PR0101MB2934;
	6:zLrRsW9eHLfI3x+9B3iLtKsWqZ8B8+Vzg3h0LKs+bu1Feg195X90JORJ+ufsdzA2LxwIKFzVF9LoGuvdg2ouZiMWQrwdFUABM1nRYlTvaTEEzIlVXrnYX5ct7U8/sEuC9rxiIUUMG8yMbaEcBXT9RxSefqKO7KMqduv1Io9MxCxfCYTKyca3ZM7cV0U/8AGH/yRsrvZMjn9TxnWkvY3FVRrEpIr+VqISC2cspKcFcnAxkaozeDH/NdZl2usEzetK2pahBt7NwINoQLE5TPyZytu9nF1TJ5ViwT7kuqBxKBCpazeN0THSIIHu70p0EDFB3IOgE4sMMIaJKAvLCd8QBw==;
	5:7LV74PrV9vta4l1I7e6jzWzlGp/RzetGDEB8hIinfuNu5EE6KTkA4h0BH9g7PDskZpXKSUDQkfIqLLWbWtOfEDJsQXvgane+OBgGOKJZM/K49RaldULqB5e+Ems4miVlcyOedk4rZVBDISHIEr/yTA==;
	24:NA8sZmecb8ZSc7WYRGn9NQGey2LGvn/IzAQQ5wQZTHmLXSskSoyfYefrZcgvnFy2xaqSl9jvF8QBuuAZZyrRq+/K3QjsXJAnUs8DzOiYdmE=;
	7:ukFQQpVR4hy706rjefJxDTylN+c+GkTjcl20syNxyeOHsVbLpMcRW1BVs1dm52boADCHYI0gGxwMqn4JOkuld9UmMeMDlnU2qUF6FGPkARZQ04LiXopDiChbkC3rIB0NUGzk1TJHlVF8K4MTIN9txUTqQdYAEIZnkIqxlXdvca0/8bRdkcrnBv0C4LlHeZvVrATQ7PHTAMUECsOaiLTfX+E0Nw1wwiuIectq3AuNwGY=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Oct 2017 23:15:46.3403 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR0101MB2934
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
X-List-Received-Date: Fri, 06 Oct 2017 23:15:51 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Great, thanks! By the way, looks like there's a small typo in the ref 
manual:

"Dibian" --> "Debian"

On 10/06/2017 03:41 PM, Scott Rifenbark wrote:
> Martin - Updated the list of supported distros appropriately in the 
> ref-manual - see 
> http://www.yoctoproject.org/docs/2.4/ref-manual/ref-manual.html#detailed-supported-distros
> 
> Thanks
> 
> On Fri, Oct 6, 2017 at 10:42 AM, Martin Kelly <mkelly@xevo.com 
> <mailto:mkelly@xevo.com>> wrote:
> 
>     I have been working with OE on debian-9 for several months now without
>     issue. In addition, I tested a build + runqemu for core-image-sato
>     following the quickstart guide and had no issues.
> 
>     Signed-off-by: Martin Kelly <mkelly@xevo.com <mailto:mkelly@xevo.com>>
>     ---
>       meta-poky/conf/distro/poky.conf | 1 +
>       1 file changed, 1 insertion(+)
> 
>     diff --git a/meta-poky/conf/distro/poky.conf
>     b/meta-poky/conf/distro/poky.conf
>     index 5b8eeb2..6d365e0 100644
>     --- a/meta-poky/conf/distro/poky.conf
>     +++ b/meta-poky/conf/distro/poky.conf
>     @@ -75,6 +75,7 @@ SANITY_TESTED_DISTROS ?= " \
>                   fedora-26 \n \
>                   centos-7 \n \
>                   debian-8 \n \
>     +            debian-9 \n \
>                   opensuse-42.1 \n \
>                   opensuse-42.2 \n \
>                   "
>     --
>     2.11.0
> 
>     --
>     _______________________________________________
>     poky mailing list
>     poky@yoctoproject.org <mailto:poky@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/poky
>     <https://lists.yoctoproject.org/listinfo/poky>
> 
> 

