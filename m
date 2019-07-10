Return-Path: <alejandr@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EED1E00D8D; Wed, 10 Jul 2019 15:41:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.81.79 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-eopbgr810079.outbound.protection.outlook.com [40.107.81.79])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE962E00D36
	for <poky@yoctoproject.org>; Wed, 10 Jul 2019 15:40:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=jtCH5d6WauKNUsX8qlFXOcXVJtDngOq/KAqYWI+Ya08=;
	b=R+rv+qesnYnoxlB3IOh4oK1XFJXoKzsjmsr/O9tq/HmsFaEanxn6Zxga4EIfW6ZgSIzcHc8ONAs1poJg0J+Uhv/rwN7xiCEvnBeC3OZC/dgh07kmK+Xn10XUEWdx7p3CjF6VLkQ5vE2EjKCKz7qgbT4pB40oqur277o3QZXODb8=
Received: from CH2PR02CA0028.namprd02.prod.outlook.com (2603:10b6:610:4e::38)
	by MWHPR02MB2384.namprd02.prod.outlook.com (2603:10b6:300:5d::10)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2052.19;
	Wed, 10 Jul 2019 22:40:57 +0000
Received: from SN1NAM02FT017.eop-nam02.prod.protection.outlook.com
	(2a01:111:f400:7e44::204) by CH2PR02CA0028.outlook.office365.com
	(2603:10b6:610:4e::38) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2052.21 via
	Frontend Transport; Wed, 10 Jul 2019 22:40:56 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.100)
	smtp.mailfrom=xilinx.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=bestguesspass action=none
	header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
	149.199.60.100 as permitted sender) receiver=protection.outlook.com;
	client-ip=149.199.60.100; helo=xsj-pvapsmtpgw02;
Received: from xsj-pvapsmtpgw02 (149.199.60.100) by
	SN1NAM02FT017.mail.protection.outlook.com (10.152.72.115) with
	Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2032.15
	via Frontend Transport; Wed, 10 Jul 2019 22:40:56 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66]:35550
	helo=xsj-pvapsmtp01) by xsj-pvapsmtpgw02 with esmtp (Exim 4.63)
	(envelope-from <alejandro.enedino.hernandez-samaniego@xilinx.com>)
	id 1hlLGh-0006Ke-UY
	for poky@yoctoproject.org; Wed, 10 Jul 2019 15:40:55 -0700
Received: from [127.0.0.1] (helo=xsj-smtp-dlp2.xlnx.xilinx.com)
	by xsj-pvapsmtp01 with esmtp (Exim 4.63)
	(envelope-from <alejandro.enedino.hernandez-samaniego@xilinx.com>)
	id 1hlLGc-0005ML-QS
	for poky@yoctoproject.org; Wed, 10 Jul 2019 15:40:50 -0700
Received: from xsj-pvapsmtp01 (smtp.xilinx.com [149.199.38.66])
	by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id
	x6AMelSk020672
	for <poky@yoctoproject.org>; Wed, 10 Jul 2019 15:40:48 -0700
Received: from [10.23.119.159] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
	(envelope-from <alejandr@xilinx.com>) id 1hlLGZ-0005IR-65
	for poky@yoctoproject.org; Wed, 10 Jul 2019 15:40:47 -0700
To: poky@yoctoproject.org
References: <781c13ee.5d79.16bdaef7022.Coremail.zzs213@126.com>
	<4c820a75-6618-337c-9468-80a839255f6e@126.com>
From: Alejandro Hernandez <alejandro.enedino.hernandez-samaniego@xilinx.com>
Message-ID: <23d045e7-bed1-d774-5007-3b10824eb44b@xilinx.com>
Date: Wed, 10 Jul 2019 15:40:45 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <4c820a75-6618-337c-9468-80a839255f6e@126.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.100; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(4636009)(376002)(396003)(39860400002)(136003)(346002)(2980300002)(199004)(189003)(65806001)(65956001)(47776003)(70206006)(9786002)(229853002)(106002)(2351001)(2361001)(6246003)(64126003)(305945005)(81156014)(476003)(31696002)(478600001)(70586007)(8676002)(2906002)(50466002)(2870700001)(23676004)(6916009)(2616005)(36756003)(52146003)(11346002)(446003)(67846002)(2486003)(53546011)(186003)(336012)(81166006)(316002)(5660300002)(126002)(356004)(426003)(4744005)(58126008)(486006)(31686004)(63266004)(26005)(76176011)(65826007)(8936002)(5001870100001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR02MB2384; H:xsj-pvapsmtpgw02;
	FPR:; SPF:Pass; LANG:en;
	PTR:unknown-60-100.xilinx.com,xapps1.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 98c3a679-8544-447f-11c3-08d70587ac35
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
	SRVR:MWHPR02MB2384; 
X-MS-TrafficTypeDiagnostic: MWHPR02MB2384:
X-Microsoft-Antispam-PRVS: <MWHPR02MB238444692A7CDE7BF89BA229ACF00@MWHPR02MB2384.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 0094E3478A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: P6xZvtJW5Do/oWPlndFG3pXWPBc2UxVSM14J0v98TcN8q62EbiY8PEbzXEAI5jTVd+NOk4aNyhcoQajss2QHWWqtLEyeietr8WgaXmrEJzQGoIM025ls+9WEkWLT28iqMV/+pGxY7VQL8KRkgBo2E2LfS/bkRRrApDveCJ7q6iINGk4M+Gl2zmETQu8BPARHWTAXN8sL8IVbrWnQoXNPyWzvDqdkzYnTGONFx2Totg9YGMpVds+DnJ+WxN/WraU5jSGAOPUco0L+kRzg+cayQ0XDCP1tz21nGba7E/xpYgmH6Bwwv82SwyBdSyUUhYyW8V1qsFsUiTzYgU8t3Na7+EKMFSynAAjs4CO3JJjaxdgf/2xhJS7RR/bUhtyNI5nKNaxuDSOSeoPzcI2Lg1Kw3+NYOb8JLlK46rn8GmoGySM=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2019 22:40:56.2806 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 98c3a679-8544-447f-11c3-08d70587ac35
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c;
	Ip=[149.199.60.100]; Helo=[xsj-pvapsmtpgw02]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR02MB2384
Subject: Re: howto build libstdc++ while using newlib
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
X-List-Received-Date: Wed, 10 Jul 2019 22:41:01 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hello zzs,

Yup, you are right, the current newlib toolchain does not contain 
libstdc++ , I have been working on it, and will send patches to support 
that hopefully this week.

Cheers,

Alejandro


On 7/10/2019 1:58 AM, 张忠山 wrote:
> On 2019/7/10 下午4:10,  张忠山 Wrote:
>> when the toolchain generated using newlib, there are no libstdc++ in it.
>> So, Can't build other librarys build with cmake, because of error testing cxx tool in do_configure
>>
>> How Can add libstdc++ ?
>>
> Now I known it need libstdc++-arm-none-eabi-newlib
>
> Is there a recipe .bb in poky? If there is How add it to the toolchain which built by bitbake
>

