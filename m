Return-Path: <malu@gomspace.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0FA86E00831; Thu, 26 Apr 2018 09:21:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.118 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0118.outbound.protection.outlook.com [104.47.2.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A643E007F2
	for <poky@yoctoproject.org>; Thu, 26 Apr 2018 09:21:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gomspace.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=DLELBbcxAq3N3bW8gPtqxpZ77rUbPMQrDS+ggNHRtdY=;
	b=cocYfvtz/vAhoypecvLavcV1cC7KIVEQtLJfVezZLjc/ZeQFAW2y8CM4GhQUjFG7UspsFCyxFgza2UkOzpbZfp8/wOpYVb0iYx5ibGiQFP/hCyDTtDpUlRZ1yusDEcJEv3ChKX5vFFap8ZMqFzt21xY8iJx8KEu5sV4vLk2tPjU=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=malu@gomspace.com; 
Received: from quark.gomspace.lan (79.171.149.172) by
	AM3PR04MB0759.eurprd04.prod.outlook.com (2a01:111:e400:883c::17) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.696.13;
	Thu, 26 Apr 2018 09:47:34 +0000
From: Martin Lund <malu@gomspace.com>
To: poky@yoctoproject.org
Date: Thu, 26 Apr 2018 11:46:29 +0200
Message-Id: <cover.1524580981.git.malu@gomspace.com>
X-Mailer: git-send-email 2.14.1
MIME-Version: 1.0
X-Originating-IP: [79.171.149.172]
X-ClientProxiedBy: AM6PR0502CA0019.eurprd05.prod.outlook.com
	(2603:10a6:209:1::32) To AM3PR04MB0759.eurprd04.prod.outlook.com
	(2a01:111:e400:883c::17)
X-MS-PublicTrafficType: Email
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:AM3PR04MB0759; 
X-Microsoft-Exchange-Diagnostics: 1; AM3PR04MB0759;
	3:F9q/K20GixC99zKwaf0GPbmI/2nzzcrRgMp5vyjWsIG/FxMAaGv8SR1ykpRDImrsMKzaCBDVJPVx+m4fG/bdE3OHxbFc8+nKSdf5IZEBBaWCGukAlhMC7sHlUaQDbfkmeT79dunWxYVoUWJfvax6NrwZCdQ0Awi5hw0YbSNOX/qRm4qG4qrg2WBvaR7DjxxA06RNBD6O+jPs1myE6j4awm8pKViMAdUlQrac9ef7CcYIb8CI3DFIVlIy6945nBmo;
	25:jcdXeecdY9KII3NkeCCRYYXs7yXSXRohOpxOADd596P8r9n7f0q+jcEfiFmbN5zumuRB/QR5yEnpP2IF0/B7AQIwvVtgMANM8tvfowji8+5BofygFQ36gNodk4ALEtCY3h5R0+pJee5ngkSY+cWEoygNxp+h2AnOpj9DBaQcPGQQPnsfOSNOogtUreSuMW3Aqzdvs/IIWYRGQ1kNSYfg/qYQjXfI0/xWSWjz/eZtRgQlmf35+kxOQIJQA1tk2FgaAmrHEVV7E6ezRRdXKeP/8ysLSAWvzYzTWBdNXYsyMDOA/+PUH+MZLzCpMfaLQm+VE2awYwpRC1jUSxZletKNsA==;
	31:PmFru2cioJ/O/tWFgB6zJpZEFaWfb/PauF4kIWI2OXZE0xY2v/UCom+j2PowesWsaAateCuv+YWhycrt4XBqDJp0lb00zfoEyNIXV9iX1P4ry2DFOH4U6drvTJS5AzP5iJoJfpg16I8JZfC29gJ0q23b8SmkSiDlVA3P7vop9niyQzwvkTn2D4poo+IrrnI1PrpajO8jhihhT//H9O5Pbhb/5NFRepieHwxayNCPmjM=
X-MS-TrafficTypeDiagnostic: AM3PR04MB0759:
X-Microsoft-Exchange-Diagnostics: 1; AM3PR04MB0759;
	20:isBwZ4/YG7Frczp4/0qoQK/Qe6DIQfMJ2LOeFoD4amDoOPP0EjEeXaSZapI6uu99eIbho7lZHAn4dpuY/uoCtVR9cm2AZMD4UnM20CPY9cbXb7aTzeAF4/iZGrb/b4Sor9513xfDledMaQC+LRXLbO0r9Tau6s7E/vz8AzDNlZcO8E1ZD+vNHSHN9FX/9op8lNNVie56hdE6USjwMwbSlzstU4NtYS4lq8uhq83PCs2PljP4n4KH+uhKzuhQ3pE4iHTpitR/0VGOG7Jx3VVsx6yFG1Csw0gRW528qntI1V4aBBNaKy74+jm3R/CqjkU9klhwzQ6lKYCHGluvjVWBdUcFvAtoTu4dpxD4jF3snPMjfW+t5cGEYFczJVbySFe53hvkfcKxMGpus0uq7mMljMyNY6QUrjdZlH0Sx/+k7yvMy0h7zzilR5agdN+aVoQY;
	4:DkeCkef4d6FyqCNppgWtmz9d+OU90e3kAhMR1vNC73rrruOR5F2eqAJEkFU03DVFCV8zk0nb+BNivbPjG4XJCNOHHszqn0rVAF1LimKXX0W7l73TGlqLJJyv2esEflza6G/GmpgXF1WfW2bRR3JyZcXN+r250tZ30fXF1O0RhdYAjv5IM0Hw4l6oZuFV83plcUMTTxBgZHdpcCtL62LOxpffkcYOjzfj7TLK1NIv/MnfV1ET1Z6E7+uDiBq9kQpAW2SK2rjPl0bo7HbEZYQcJg==
X-Microsoft-Antispam-PRVS: <AM3PR04MB0759BABBA81DB5B1A3545BF3A18E0@AM3PR04MB0759.eurprd04.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(3231232)(944501410)(52105095)(3002001)(10201501046)(93006095)(93001095)(6041310)(20161123564045)(20161123562045)(20161123560045)(2016111802025)(20161123558120)(6043046)(6072148)(201708071742011);
	SRVR:AM3PR04MB0759; BCL:0; PCL:0; RULEID:; SRVR:AM3PR04MB0759; 
X-Forefront-PRVS: 0654257CF5
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(39380400002)(39840400004)(346002)(366004)(376002)(396003)(199004)(189003)(377424004)(6512007)(7736002)(6116002)(3846002)(2351001)(47776003)(2361001)(8936002)(2616005)(476003)(53416004)(50226002)(66066001)(305945005)(1857600001)(6486002)(26005)(956004)(50466002)(5660300001)(386003)(16526019)(186003)(6916009)(6666003)(8676002)(486006)(6506007)(81166006)(59450400001)(81156014)(4326008)(25786009)(107886003)(51416003)(316002)(48376002)(53936002)(69596002)(68736007)(106356001)(478600001)(105586002)(52116002)(86362001)(97736004)(2906002)(36756003)(16586007)(42262002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM3PR04MB0759;
	H:quark.gomspace.lan; FPR:; SPF:None; LANG:en; PTR:InfoNoRecords;
	A:1; MX:1; 
Received-SPF: None (protection.outlook.com: gomspace.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; AM3PR04MB0759;
	23:2pY+z3xea8ciNWOsyXuof3HfbUzbgOGQ7QRyur78Z?=
	=?us-ascii?Q?UlpS+0zbE7mYt4XccwyEG1wDsaxpSVfGz5RH1rDMipuKT70G5cmYAppvnZEz?=
	=?us-ascii?Q?+UC3h+XxYP+b4Usx2TTo1zrRoQSoSzPIacf3gS2Tg5icbd88kC7wohQ++ASW?=
	=?us-ascii?Q?UtHb/WVtBa/y+APieRW/ccD8M03XoSbgJlxhGjy7U9kA9yH1SMADsl6xH2r1?=
	=?us-ascii?Q?VP5fqTkHhs4Uz+q0YdyAyS0RGDYI5SER3Xk22gGcOMOysTfkacwkJV+KSdBV?=
	=?us-ascii?Q?0RFksKUq51dgx1bCpYbEfZ72+Cw+OVOHrj2vg1lKBDiDt/EYOjJGJHcY72kx?=
	=?us-ascii?Q?ET03xuyYbTYMJEOtjhw0mNPeDWoan4C8aekwkSVbCPAPqcuTd/NNYWQYK649?=
	=?us-ascii?Q?Fii8uWam8nuV2dDxp1SMdWEgRH7scdzOtlWsu7IuRK+ZnMBfL/tf/mIHkED2?=
	=?us-ascii?Q?jFQC1g6aliVkF/vluFisUPuk8RDxTOU+9qS09KHR1IWSB4uWJSjuwkCJ5h/E?=
	=?us-ascii?Q?M1AySBBb8vFNlcct+Hh4BGLUWM3vEZ29UuTxKRmOcYBiWRZXXzSvhwEwNuti?=
	=?us-ascii?Q?grzmWlrotbFlpecR7acOoEuyS4ur8V5khSMkCPoj4CMZAlJ35JX1Y4HUnVl1?=
	=?us-ascii?Q?YET79TCJ+MGumrPAzziDeaqWB9pWsnv6WKqrhFcVmCc1iNYXzSP7fnkSHHfC?=
	=?us-ascii?Q?eYyNnQYVZS649rV+t0akAYGp7YFtLZJeTdHri2fW0B8jssmh+NYsruoaExut?=
	=?us-ascii?Q?4VvidPrUiDCmAdKhWX7C7AxQxwmh3mOKz26FdGMa6wFzXrLp2XPqBvrW/Qv+?=
	=?us-ascii?Q?4kMhIcbvwFXQg3sbqKuVrNUq47ftxpJTrswaTi1yYoAygzH7+ZBHvXTTO5Rn?=
	=?us-ascii?Q?vHPU0oKWSp5XiBaUYcBXZtce90b5fDApVlK6TkfWOQbqc2jt7wxOavlOhM2S?=
	=?us-ascii?Q?UFNrTmH8JFqWPKLf+yulWzAZnPdTHw7BoL81ymHWNJo6fCWvHNfdyHUOBKho?=
	=?us-ascii?Q?GRid3gtaMche/71hb95QasHeBTHsK1VpHQ63Sn+6fBh99zglHtOMK5RTTdv1?=
	=?us-ascii?Q?LXLNGffhTCJ1eBrVm4MMZhsPedS1qwPe0xQ7PblIXoDEcNO/mJs76tXZ5TwE?=
	=?us-ascii?Q?+vewSRPXbVoIKTjw7h1iGI7+1Yz32rUTY4KVfCowW2o3OgaNEIO7dlb0djaw?=
	=?us-ascii?Q?bc8nH28uFjph7XP7Jd3FkF/jFhJAPTytAbw985o6XuqeUdnfAU2tZe/Eonl7?=
	=?us-ascii?Q?TW3Cb+UKOjgYfcMNZs+SB4NL3eQAteGFriBNkvYjdN4e7p0LGUbiuMPahUyd?=
	=?us-ascii?Q?MQQQAQ18Wr26osXjvHN8W0=3D?=
X-Microsoft-Antispam-Message-Info: 6qDZ2X1RKnXxjen9oZNQ+MFxB8JkN31aZDIUmiaoP6KUD0nvhNTA5QTLTmHaO4MY5ZoHDcnC1rjbrDbl/QGON27tXf+K23Ik9AuAAtlLMYkbF3yoQBIz8h1fSdsxmoF2JaJTsum+6ADE2alMc8Sj5+JrSeBRibtnI8MUpvvBvRb6YpR3b7qsOSZnxNPx3ILn
X-Microsoft-Exchange-Diagnostics: 1; AM3PR04MB0759;
	6:XB63RZutxdAEH6GaY1St2rLH+L74juyVrD6scHRo/P2TyS4EhHtlEpbsMby5ZvP+nPnufa60dnM1QZaNGbW0tUCfERAtASdKvmMmu59ZB3b75wgnehO1AnoXeGn+lIldFf+3KapqINpxVZ/qe5FarezUpWjpSEVe0JVPWmmEJqtUIh+PSEXMrcSbzKGM9UAVguR/N33iJIkCJYekWUE9BFvP7W2/I8nGGKf/Ee6lR55SWfTtyxDQ8yZrREYJUqQcb0r8DwQMm/fKo8c+3CAfqyR5RWR2fXfJdl6cFVNXEqrp/f0HJjlbpkRCKHlWVQmU5sOZYVaUuQ5NrOsYqJJXqzDcw0OvBJYOH/EJ6VcpKYvwTZs2w5awYTFmeobhSkfzzziKEuONQLIAtGkQK+iI6/dCjFyr9FTz1oaFXq8evKQMBSlSVcJIktUhmIOQjD9S3R0keOEjo0D+PQHggou2BQ==;
	5:Vo7VZoEKnmlZxD1f5vPe7DklwVjGaygPuzGn+CYCOXuKULmQJGmhPRUPgPBmGPvJdP6JwJfN7MGxRG4aAybID7biXM8nTmy7l2corYpPXEOERg6DCui80xt6FeoFA7dk445XvejKMseyKRJPIWxsOyw5jdrsLsOaB25/5tmA02w=;
	24:wZAV+/hXFmFAzELqnalVl9aV7FVfDfL9N47s0NE6HIHFHddzOj2TKOn+Nnaxm9O6QSMnLBYyJMnDvkpqaK6EirF7kFs6AAMS7xnPa294uIw=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; AM3PR04MB0759;
	7:0BSy9x+uYgIjpyNYtGA853LtONCDDMUzIA51j/SmViZzCEdnBTaiT6jDu7Qijdws4uOu7pxBbGAh95W+96dGeMWeA46jIRWIDBww/3AKLmLpnDRQVL3sQ706QmeheF1kdwpvcQn6DJo59Cpczz8y9A1+fpEIx9X+LScNOULlnaCwm3nheGsiGygu+45vbfyy46+VLdgCP+yoOMCiKsjy3BTqtc5BI/am8TYamByIJw2jxiKjeT284kMH49zTK3YR
X-MS-Office365-Filtering-Correlation-Id: b8ec636d-706e-44e3-f689-08d5ab5abc96
X-OriginatorOrg: gomspace.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2018 09:47:34.0490 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b8ec636d-706e-44e3-f689-08d5ab5abc96
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 91ed1e54-6d8b-4599-84d8-65fe75fda3d1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM3PR04MB0759
Subject: [PULL][PATCH 0/1] mtd-utils: Add mtd-utils-tests package
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
X-List-Received-Date: Thu, 26 Apr 2018 16:21:17 -0000
Content-Type: text/plain

    Add mtd-utils-tests package which includes the test suites mtd-tests,
    ubi-tests, fs-tests, etc.
    
    These test suites are useful for verifying flash features or stress
    testing.


The following changes since commit da3625c52e1ab8985fba4fc3d133edf92142f182:

  build-appliance-image: Update to sumo head revision (2018-04-23 17:54:32 +0100)

are available in the git repository at:

  git://push.yoctoproject.org/poky-contrib malu/mtd-utils-tests

Martin Lund (1):
  mtd-utils: Add mtd-utils-tests package

 meta/recipes-devtools/mtd/mtd-utils_git.bb | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

-- 
2.14.1


