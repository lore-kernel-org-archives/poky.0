Return-Path: <prvs=056467a1d7=ghuber@qualitrolcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 208C0E00D1C; Fri, 26 Jan 2018 06:40:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [148.163.159.190 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3623 seconds by postgrey-1.32 at yocto-www;
	Fri, 26 Jan 2018 06:40:36 PST
Received: from mx0a-001d2f02.pphosted.com (mx0b-001d2f02.pphosted.com
	[148.163.159.190])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9145E00D1C
	for <poky@yoctoproject.org>; Fri, 26 Jan 2018 06:40:36 -0800 (PST)
Received: from pps.filterd (m0089643.ppops.net [127.0.0.1])
	by mx0b-001d2f02.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	w0QDbYqo011384
	for <poky@yoctoproject.org>; Fri, 26 Jan 2018 05:40:13 -0800
Received: from nam03-by2-obe.outbound.protection.outlook.com
	(mail-by2nam03lp0048.outbound.protection.outlook.com [216.32.180.48])
	by mx0b-001d2f02.pphosted.com with ESMTP id 2fqvmphppd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT)
	for <poky@yoctoproject.org>; Fri, 26 Jan 2018 05:40:13 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=fortive.onmicrosoft.com; s=selector1-qualitrolcorp-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=tgIynF5teo2ClIELohe5F8QQG7sh5vwjddEfVQt0I/c=;
	b=Hgi2ajbc0JjWwL2NF5HlYvL1u/Y0R7R/yLLWN/uAL/ZGwXMN60N2uSKnPyRHxBz7yc/kiXZJHv9nXw9LgrQCATM8CuHV43jHYBgVaFKlZI4k0du7OVTnCbCYh7ukmP4vL6DJQ8/z5AOD8yH6YZl0K8OyZAhB8sq2AOWeXA1hjRg=
Received: from ghuber.dhrqtc.org (64.132.54.213) by
	BN6PR12MB1844.namprd12.prod.outlook.com (10.175.96.23) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.444.14; Fri, 26 Jan 2018 13:40:10 +0000
To: poky@yoctoproject.org
From: Greg Huber <ghuber@qualitrolcorp.com>
Message-ID: <3fd0e1ec-c033-7169-cc4a-30a6a084fc4b@qualitrolcorp.com>
Date: Fri, 26 Jan 2018 08:40:05 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
X-Originating-IP: [64.132.54.213]
X-ClientProxiedBy: CO2PR18CA0064.namprd18.prod.outlook.com (10.165.92.160) To
	BN6PR12MB1844.namprd12.prod.outlook.com (10.175.96.23)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 11534021-82ec-499c-27b4-08d564c25226
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(4534165)(4627221)(201703031133081)(201702281549075)(48565401081)(5600026)(4604075)(2017052603307)(7153060)(7193020);
	SRVR:BN6PR12MB1844; 
X-Microsoft-Exchange-Diagnostics: 1; BN6PR12MB1844;
	3:GpcTIS5Y3+wmAJdZe9aIS5y/2kFi5mRAqOxwtBzyzfwBHgpbqaiLvBR+INv23zHPn/RPzC+03hWDrzLOBl1HCi8KY3RIGWE4HGqWijLNzBSAPI0hI7LlVh6+3VnM/1buEm9v6rM8VHjarHJcz1w7ZplbWkVRHkv81i6ppdhzBpaIk6yeRgZI4tmtGvDcJVKPIpK26owdONbHNEAUlXGsbXCtxoGl3ZUULqXgEwb9CJLgOaQ5JvsopwFnqX+i1Qsv;
	25:yXYh0yENU0mtwq3ZaYRg6J7bKmMRx4HQyvT+C+xF3az/ixA4AMy66otvHc31QMekzGiLQ537qSRk8EmK9DjjOOcLOrdC5nQGyIDkXJlzOQnsBN2967iTtVGG2ZpU0auovymaaLxzWVACzS9w0Mt0Xy+IIpyxjuUrKNSFlEe1IaxY4zir8Cxh7nP/onWaZ3GZay/FLQcyUC2j5L0EIjRs7xJq9SdilhjRWsgPeWcuNIn/vq21nBsPN4YKSmmeiJ0+6rXe6mc1EIAVacfnw1aLvDQ/LUzzJazNx20zzG++gnqKj3H7IGuhFY2vUvX/cWhKMfK+CJSEeRaw/q76ALlhZw==;
	31:W4H37M0EI/mCA5A56D+GW3Wkoc0Zj8XF9xYP230WlsHsxJ5BzfBghuX0yPw4dliefhE63/OtNlqKNqdoRkRekK3kw5LnKVz6kYKUWwBh5DeVGemv1fy8uEkwc5m4C9oWzpeeHfBOPdeBhz7GoN0yiL4ezyDe06jWhTcO7OS2XmIbbYw3zkKEGkYmjMgloFUNBIcR4nafdjlmKBIoO6edcCFl/VCt7Gl8WNvdCV6LQE0=
X-MS-TrafficTypeDiagnostic: BN6PR12MB1844:
X-Microsoft-Exchange-Diagnostics: 1; BN6PR12MB1844;
	20:QhrvNW9tJZvoxgy6x0Glgr/hRdm2Bep8AdLfQTn+c9CG9RR1OhA0eB/Y5RiiIg4fNH3POZ46Hzpvw5uzkpxFwoLSgwg68B8uekScvaekIpkVH/sKcKEINm2uyfZrbRW8tT2q17uhOxECXAvi9jnlnsHK4jzWGuiXZOfz8HahDlHSdFVe10YzyHixWxNDnKWtBQnu+I8n2DRlB2BcgLxfu0B23Z+yOIyupaH5Zpr3DRuCknNg50ERA0qyTkhzgqkMdyesUWkr2OAkAznZH45h1+g2AzLEapnLQ6HsGoWrAOlgZXEmOubM9QBSGe+JJRDklNrww1CAD0r5qZ4qeH5d7hjSMBR8GoX/eq8/olmYc16yPzSX49hKi5yw68XrHqppFQHSvkmGuudVKG6KricDHGjlBZebTdn3Yq9D/rF9qIdEq+M213U/0YCOKU5uUyZ48jDPmWPQOc1W/L23y8sJwigcPCTnt4vg8MXqlkYs8rU5cTu6wMoXOF5mkAVwGj+V;
	4:y96NEIVdQD6IEdFZOEDlMiJQD9irtoTp8eO3SqJgKFnxs28roz6Y0XBNpOXdKNdxY5LSzKER90R4V1rlS4dLw7dqjVtxxNfC3XkLu3k40RCf6OjC3pAfzkQkP8Co6Gb302rUk0yRiNfw7UBUF6n83YdpmwmlJlF9OjwBuCK3Wlazg77Z5RY43Ps2gMJownfOduMzrHHdb8IyGhKlkwr2PImxTYUUkwjgwYM0Ruu3jJHC4dj8c90Fk7q/r5T9B7ZpSUwI03bTZATFYaUe7ZXbPw==
X-Microsoft-Antispam-PRVS: <BN6PR12MB184453F3FF8F45ECB98D6A1DD1E00@BN6PR12MB1844.namprd12.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040501)(2401047)(5005006)(8121501046)(10201501046)(93006095)(93001095)(3002001)(3231072)(2400081)(944501161)(6055026)(6041288)(20161123564045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123558120)(20161123562045)(20161123560045)(6072148)(201708071742011);
	SRVR:BN6PR12MB1844; BCL:0; PCL:0; RULEID:; SRVR:BN6PR12MB1844; 
X-Forefront-PRVS: 05641FD966
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009020)(39860400002)(366004)(39380400002)(346002)(376002)(396003)(199004)(189003)(305945005)(97736004)(36756003)(65826007)(52116002)(64126003)(50466002)(52146003)(2486003)(23676004)(31686004)(6486002)(3450700001)(5660300001)(386003)(2906002)(16526019)(7736002)(186003)(6116002)(3846002)(6506007)(59450400001)(6512007)(53936002)(69596002)(26005)(65956001)(6666003)(345774005)(6916009)(105586002)(8746002)(5890100001)(68736007)(478600001)(66066001)(65806001)(86362001)(43066004)(8936002)(575784001)(47776003)(3480700004)(106356001)(8676002)(53416004)(81156014)(2351001)(81166006)(316002)(83506002)(58126008)(31696002)(25786009)(2361001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR12MB1844;
	H:ghuber.dhrqtc.org; FPR:; SPF:None; PTR:InfoNoRecords; A:1;
	MX:1; LANG:en; 
Received-SPF: None (protection.outlook.com: qualitrolcorp.com does not
	designate permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtCTjZQUjEyTUIxODQ0OzIzOk9XYmkrYkEvd3ZKVkZoSFpHNWNkZmlGZUJE?=
	=?utf-8?B?d3RXcmRCZGZDUWVERHQyS3cydTRUdy9BczRwWERuUmlUS1NONHhVS0dhNCt6?=
	=?utf-8?B?Tjl3b3pNdk4xSUorME5mNk44ZkNUREV1bUw4WEdkTllnb2g4WjFPWFF4OFll?=
	=?utf-8?B?QmwwelcxMEdmV0Y5Y3E0aG9JRzJlYXZ5OWI5ZEtVQmlIRDIyS2hZZVhwQ29t?=
	=?utf-8?B?VklSK3dxcFdVTWR0WC9MZXBsVExOazBiNHhJcWVQQ2c0VTZjUGUvQmlJSGxh?=
	=?utf-8?B?WGxsaG1XRy9SOTQ2MUFZc05mVWtwNWlTU21Ddnp6V3kxN09qdU1HQlZJN0l5?=
	=?utf-8?B?Zlg0bWpzbFpyQUtPU1ltTXFCLzN1WmF0d1JNQlRxUUR4REVJY0Y5eStPWHJD?=
	=?utf-8?B?ejhhaEV1QlduWVFyWVcxeS9QMG9KTXU3OW9KM0M2azVFMEVoV2FoUHB3ZE16?=
	=?utf-8?B?QTBtL1NwT21WUFFlZDh5bERpaUsvWlR0VkQ1VE5qbUN3TTU2TG9uOS9LS3N1?=
	=?utf-8?B?YUhyRFlSWFRidXBjZ0F3L1NSUDNJenBXN0lZNU5Mb0tTVWNhVnJTOFEydzVH?=
	=?utf-8?B?S00ydWhmK3VMRitTR0FBVCtQdklZZ3VWbHIvanNJS0dLMHpvak81eUN2ZHlG?=
	=?utf-8?B?Y0trZmtFejkwMmdBeFJNQmdYTE1oTDdRRE0zTVVxQlZ6SEZ2SFVOV1owaGtH?=
	=?utf-8?B?d2tyREFvL01CU3VJSENabDltWmxTTWovM0YvUkR5TVY1eTM5MmRpWCtYOUdT?=
	=?utf-8?B?amIvR1grUnFUMm1YVkk4K3pmZzh5NnQydC92QXpNVEVVYTVrSWxaWHJqSk9a?=
	=?utf-8?B?RUVCakdwQzZIS3hNbUd2UU1HQmFzK2Q4RlZxM1dFVDNuRkJVeFBkY3I2Nkli?=
	=?utf-8?B?cG9JWVh3WDcrVDFoTFVNWjdlYVpvVlo5UWxkMDlkb2V5bWNFeGlJYnBqRnBr?=
	=?utf-8?B?RTN2aFBxNkhna3VLdjNZNGI0N2t0NUJMaGRpTGVIQjY3dktqS1NTc1NBNHdn?=
	=?utf-8?B?TEFNRkt1UC9lTk9BdHlqTVZVU2tabi9WQkZnQXNWMjVjREdLK29nbkhQbCta?=
	=?utf-8?B?YU82UTRTU2Q5UHNqUUFIZE9OT3Q5d1p5bTltT05PZUtPVCtjdFFXcVBPalgv?=
	=?utf-8?B?ckFlTWZ4Y1NzelRvL2N6Nyswcit1MXZsaW51K2htVzYvN1lGVndyS3JXekw1?=
	=?utf-8?B?elZxeHFaTi8vWjV3aUZRSnJCZnBrZzdCUkF2eVZxa1ZsSE9ZTm94N1Z4K2dM?=
	=?utf-8?B?bFQ4alJtbjZUYVdJZ0NybHRhWkZqd0hwTGgzN0piYXVUOU1hek1ObzhrN0c2?=
	=?utf-8?B?cHVmZUVEV2NHY1hIdVBpaXRhVG1NYTVLZVkvZjJBVklVVlFqWmNUb29wTk4z?=
	=?utf-8?B?YitPQXg1NFNTRU9GcFRvbmhiL2Y3YzgyOU1jcEwrTXRUMVZtTjgyQVZaUkxs?=
	=?utf-8?B?eHBReVFJYkRPMGxkNmhXQS9pNEc4bGNrNC9ySmhpZTdUVnI2T2p5TlVsbjVa?=
	=?utf-8?B?elBrSzJmd0U5UHNxdjdNTkhOQ0V4Mmk3QXV3bVpTaG5id2daR00zY0ZkOE9o?=
	=?utf-8?B?ZmZCSUxUTWlBaU9GMDltZ1ZtL1FvdkxkeVg5YTNEMjV1L0FYTXVaaWEyN1pK?=
	=?utf-8?B?alJzMWtIRVBncVk5RDJBZ2xudk1XOTB6dVJUUjJTSVVlditOTzlYMW5oK1Q4?=
	=?utf-8?B?VkxycTdrTzBPWUVxcUsyUVVkNldiUkh1VlVmd1JreUw0Ujl3RnVMWmNibmNQ?=
	=?utf-8?B?VkhvbDk1TWtCamVnNjJSQ3lSYi9uQ0luQk5HYUtsVjk2YXRIZmVNcnI5YjJ5?=
	=?utf-8?B?ZTk3eXpnK2pkSTRHVE1Rcm5yUiswUFdmRWdqVGRHa1p4NXllUnp2M1lMMWVM?=
	=?utf-8?B?MklFbHZEaE9QTlROendpUVczMloyd0ZwZXppbWNBUVdYOW1mdkRneVJlUkRn?=
	=?utf-8?B?UGhnQVpmY0o0ajdFeXJjR0tYaERsRFIwVnJ1K3hPS3M3QnBtcVdVODdGMUxu?=
	=?utf-8?Q?A3LtpP?=
X-Microsoft-Exchange-Diagnostics: 1; BN6PR12MB1844;
	6:sc2tU7J1eu1/rEjc9DaW9VT08vnc56wiynH80BJPLQH0zd4fKal8uHAa0uqcAGSV6Jb1S7ZzqSNIYviwJdJePeICYy+H0E1kRC0SD2XgCxzMgmgndDDWMpcv/eQvhTNkn1B8BHqaVFgRLetwHtFb9KD71U9JIQSxyfpJlMrUkdFKUdMrFXSZ/RKRz9Mq9+oOrpwc3IxxmdzbTre4b9Yv5se13KGo6kcCbZhKgLTegYS1ORNE+3WUtN/5R7ftMdEklYr47qFAeYy83hcJlLHgJOeUzTE1QG+W1ljcpgQdDUn8cW0vQbgikMF4CUbC2EjecucwqMzjDuDhLe3QM/Lq723lNWp16ppOOK70H1jbyiU=;
	5:tx9tXXfQ5DN2OlS3XWjAKhZ2yNu3i1fyyPY0DdGK1O7ni1EMzecQMo3v6CqjJIWZNX2vqczoV1+ZdccD3m4SzgTqs+MvNbOOyfRLy5t4Yjm3cRDA9hGJ8gtQ59Ln6Ahz8fKfsKNFHc3MX5YUcGShjNPIxgA7f6JkHCYKNfM4uOU=;
	24:1USnMtpddQ/Wt1b66rZV2Bp9+UVDvTGOAVzGSUzcRJGmBqx49+BOd/tCTyz7hGYinEghse8QEqIDNF0dzG/mlYPUhyBVB/CRVUGleiNaALM=;
	7:AY0iYXRwEg58x+wt7D1RHLGTA8yH0J08aOSVna75pZGE4FNTL8TxFN/+JI8GSIFdAUrv7n8N04NNogviEaZEmsXs2qi6mkcUJ+tTbYR6YaFze0Xgf2j0AFn3hWOUYnPn9IrqUl+1yf4CVFkiTfi/0g6mLmWTPV/cWhEga8GMI1cIMqi0S1OOfMU+hW9JZ4OyXYFawUg3CTFuWQOnWsg9yAXq3bVzBwXRrKizBOibEn3nzzaZEvTRUaJNDu5drhX4
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: qualitrolcorp.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2018 13:40:10.2771 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 11534021-82ec-499c-27b4-08d564c25226
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 0f634ac3-b39f-41a6-83ba-8f107876c692
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR12MB1844
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2018-01-26_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy
	score=0
	priorityscore=1501 malwarescore=0 suspectscore=1 phishscore=0
	bulkscore=0
	spamscore=0 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1711220000 definitions=main-1801260180
Subject: mariadb on Poky master
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ghuber@qualitrolcorp.com
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 26 Jan 2018 14:40:38 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Hello, and thank you for considering this...

I have been building the Rocko branch with no issues for a while now.
Earlier this week I tried switching to the master branch due to some
outdated packages. Building meta-toolchain when without a hitch.
However, when I tried building our first target, the 'mariadb' package
came back with a rather difficult error. I added a patch for the
"%pure_parser" problem but I can't seem to figure this one out.
(i shortened the paths to make it more readable)



Loading cache: 100%
|##########################################################################=
###########################################################################=
#####|
Time: 0:00:00
Loaded 3205 entries from dependency cache.
Parsing recipes: 100%
|##########################################################################=
###########################################################################=
###|
Time: 0:00:01
Parsing of 2301 .bb files complete (2296 cached, 5 parsed). 3195
targets, 224 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
NOTE: Multiple providers are available for openssl (openssl, openssl-qoriq)
Consider defining a PREFERRED_PROVIDER entry to match openssl

Build Configuration:
BB_VERSION           =3D "1.37.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "universal"
TARGET_SYS           =3D "arm-fsl-linux-gnueabi"
MACHINE              =3D "ls1021atwr"
DISTRO               =3D "fsl-qoriq"
DISTRO_VERSION       =3D "2.0"
TUNE_FEATURES        =3D "arm armv7ve vfp neon callconvention-hard cortexa7=
"
TARGET_FPU           =3D "hard"
meta
meta-poky            =3D "master:be821416fe0f092c90feeda7e008452af46fc6c7"
meta-oe
meta-multimedia
meta-filesystems
meta-networking
meta-python          =3D "master:9eb33e651aaf0067c32110977e8700aa16811c55"
meta-selinux         =3D "master:d855c624f32c5e599bf27e06cb8f5b25b3aae12d"
meta-freescale       =3D "master:bf7fd9cfe0788fe2f819a4ae2cc7db8327fe161a"
meta-freescale-3rdparty =3D "master:fcc529237f9c934b42549a9bae70576a193eab0=
a"
meta-freescale-distro =3D "master:3f958b6a9a4c4120f241e431fec8e5ba616fcc73"
meta-fsl-arm         =3D "master:154ccf1e8b08e3d6219bd455b7dfe9ff7ab975b0"
meta-qualitrol       =3D "master:70535e13dd2aabbad53243518f4cc5064d284592"

Initialising tasks: 100%
|##########################################################################=
###########################################################################=
|
Time: 0:00:03
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: mariadb-native-5.5.57-r0 do_install: oe_runmake failed
ERROR: mariadb-native-5.5.57-r0 do_install: Function failed: do_install
(log file is located at
fsl-community-bsp-base/build_ls1021atwr/tmp/work/x86_64-linux/mariadb-nativ=
e/5.5.57-r0/temp/log.do_install.8701)
ERROR: Logfile of failure stored in:
fsl-community-bsp-base/build_ls1021atwr/tmp/work/x86_64-linux/mariadb-nativ=
e/5.5.57-r0/temp/log.do_install.8701
Log data follows:
| DEBUG: Executing shell function do_install
| NOTE: make -j 8
DESTDIR=3Dfsl-community-bsp-base/build_ls1021atwr/tmp/work/x86_64-linux/mar=
iadb-native/5.5.57-r0/image
install
| make: *** No rule to make target 'install'.  Stop.
| ERROR: oe_runmake failed
| WARNING:
fsl-community-bsp-base/build_ls1021atwr/tmp/work/x86_64-linux/mariadb-nativ=
e/5.5.57-r0/temp/run.do_install.8701:1
exit 1 from 'exit 1'
| ERROR: Function failed: do_install (log file is located at
fsl-community-bsp-base/build_ls1021atwr/tmp/work/x86_64-linux/mariadb-nativ=
e/5.5.57-r0/temp/log.do_install.8701)
ERROR: Task
(fsl-community-bsp-base/sources/meta-openembedded/meta-oe/recipes-support/m=
ysql/mariadb-native_5.5.57.bb:do_install)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 2907 tasks of which 2453 didn't need to
be rerun and 1 failed.

Summary: 1 task failed:

fsl-community-bsp-base/sources/meta-openembedded/meta-oe/recipes-support/my=
sql/mariadb-native_5.5.57.bb:do_install
Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.


Than base problem is that there is no Makefile created (or it got
deleted) when do_install runs "oe_runmake 'DESTDIR=3D${D}' install".
This package and the few that depend on it are the only failures,
everything else builds without error.
Again, this builds in the Rocko branch and an older (1.7) branch I still
have but not in the master branch.

Any help you can provide would be greatly appreciated.
Please let me know if you need any additional information.

Thank You.
GRH

________________________________
________________________________


Please be advised that this email may contain confidential information. If =
you are not the intended recipient, please notify us by email by replying t=
o the sender and delete this message. The sender disclaims that the content=
 of this email constitutes an offer to enter into, or the acceptance of, an=
y agreement; provided that the foregoing does not invalidate the binding ef=
fect of any digital or other electronic reproduction of a manual signature =
that is included in any attachment.

