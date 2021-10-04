Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com [67.231.153.30])
 by mx.groups.io with SMTP id smtpd.web09.8993.1633352692351174033
 for <poky@lists.yoctoproject.org>;
 Mon, 04 Oct 2021 06:04:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fb.com header.s=facebook header.b=VB5ptBa9;
 spf=pass (domain: fb.com, ip: 67.231.153.30, mailfrom: prvs=9911f96951=hkleynhans@fb.com)
Received: from pps.filterd (m0109332.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1949GOI6007564
	for <poky@lists.yoctoproject.org>; Mon, 4 Oct 2021 06:04:51 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com; h=from : to : cc : subject
 : date : message-id : mime-version : content-transfer-encoding :
 content-type; s=facebook; bh=mM1MUE9YlC9mj+KnGqcfSgRl+997VbeqQCbqn/iP9DA=;
 b=VB5ptBa9oxHyFHeAbeOXA7Y1czPw1lRQMQZWNJiiXn3vMSrq3puHomiyV8Djy0IUON9s
 JPFqvbWYrysEEaP7yhIghBeKAq2TgoyjTJIG15ONbIT90qfjBQms3UjILX5uMbf/1MRl
 ml14kM3HmIQwgQwJmefObLu9OXw+I6mzVN0= 
Received: from mail.thefacebook.com ([163.114.132.120])
	by mx0a-00082601.pphosted.com with ESMTP id 3bfxtt9anv-9
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <poky@lists.yoctoproject.org>; Mon, 04 Oct 2021 06:04:51 -0700
Received: from intmgw001.05.ash9.facebook.com (2620:10d:c085:108::4) by
 mail.thefacebook.com (2620:10d:c085:11d::6) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.14; Mon, 4 Oct 2021 06:04:50 -0700
Received: by devvm2497.lla0.facebook.com (Postfix, from userid 230225)
	id 4EE06E05A85E; Mon,  4 Oct 2021 06:04:45 -0700 (PDT)
From: "Henry Kleynhans" <hkleynhans@fb.com>
To: <openembedded-core@lists.openembedded.org>, <poky@lists.yoctoproject.org>
CC: <hkleynhans@fb.com>, <rmikey@fb.com>
Subject: [V4][PATCH 1/1] sstate: Switch to Zstandard compressor
Date: Mon, 4 Oct 2021 06:04:36 -0700
Message-ID: <20211004130437.2145879-1-hkleynhans@fb.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-FB-Internal: Safe
X-FB-Source: Intern
X-Proofpoint-ORIG-GUID: NRzVXtNRm94mR972drf_Hc15b_NnaTc6
X-Proofpoint-GUID: NRzVXtNRm94mR972drf_Hc15b_NnaTc6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-10-04_04,2021-10-04_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 suspectscore=0
 bulkscore=0 phishscore=0 malwarescore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 priorityscore=1501 impostorscore=0 mlxlogscore=465
 adultscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109230001 definitions=main-2110040091
X-FB-Internal: deliver
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain


Changes since [V3]:
* Do not declare ZSTD_THREADS

Changes since [V2]:
* Use `pzstd` when available
* Use ZSTD_THREADS for the number of threads, defaulted to
  BB_NUMBER_THREADS
* Cleanup bash variable use

Changes since [V1]:
* Switch to Zstandard rather than adding it as an option
* Specify 'zstd' threading and compression as arguments instead of
  using environment variables
  * Remove debug output
  * Non-posix if statements were removed as a result of replacing 'gzip'
    with 'zstd'

