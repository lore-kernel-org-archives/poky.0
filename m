Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com [67.231.153.30])
 by mx.groups.io with SMTP id smtpd.web10.7651.1633345194696930868
 for <poky@lists.yoctoproject.org>;
 Mon, 04 Oct 2021 03:59:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fb.com header.s=facebook header.b=kdHU34J8;
 spf=pass (domain: fb.com, ip: 67.231.153.30, mailfrom: prvs=9911f96951=hkleynhans@fb.com)
Received: from pps.filterd (m0109332.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1949G0rD006110
	for <poky@lists.yoctoproject.org>; Mon, 4 Oct 2021 03:59:53 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com; h=from : to : cc : subject
 : date : message-id : mime-version : content-transfer-encoding :
 content-type; s=facebook; bh=y4mdqqC3aSX1Nhu5l+Eivj5A4kdDx95zfvz0Frdohy0=;
 b=kdHU34J8t/cUu2slbt+IAsMXRPcpoy5b2pl/0mgh2iO4NhwsLfU6GqpdqwSRKN1P8dWT
 LnQBz+m1cygdHfSN91BCkdm1wnzKHpWEdNeGOKuxj8Cz+E5JME4Mihk5Os7KUP/U2adU
 5U8qo7ytONq3ICDn2wp0vIN/ACOSwx9hM6U= 
Received: from mail.thefacebook.com ([163.114.132.120])
	by mx0a-00082601.pphosted.com with ESMTP id 3bfxtt8jfb-4
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <poky@lists.yoctoproject.org>; Mon, 04 Oct 2021 03:59:53 -0700
Received: from intmgw006.03.ash8.facebook.com (2620:10d:c085:108::4) by
 mail.thefacebook.com (2620:10d:c085:11d::4) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.14; Mon, 4 Oct 2021 03:59:51 -0700
Received: by devvm2497.lla0.facebook.com (Postfix, from userid 230225)
	id DED6EE00A2A0; Mon,  4 Oct 2021 03:59:46 -0700 (PDT)
From: "Henry Kleynhans" <hkleynhans@fb.com>
To: <openembedded-core@lists.openembedded.org>, <poky@lists.yoctoproject.org>
CC: <hkleynhans@fb.com>, <rmikey@fb.com>
Subject: [V3][PATCH 1/1] sstate: Switch to Zstandard compressor
Date: Mon, 4 Oct 2021 03:59:36 -0700
Message-ID: <20211004105937.1535306-1-hkleynhans@fb.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-FB-Internal: Safe
X-FB-Source: Intern
X-Proofpoint-ORIG-GUID: viV4ddalaD8QpjePtn9LrKyJkfu4Qk2p
X-Proofpoint-GUID: viV4ddalaD8QpjePtn9LrKyJkfu4Qk2p
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-10-04_04,2021-10-04_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 suspectscore=0
 bulkscore=0 phishscore=0 malwarescore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 priorityscore=1501 impostorscore=0 mlxlogscore=482
 adultscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109230001 definitions=main-2110040075
X-FB-Internal: deliver
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain


Changes since [V2]:
* Use `pzstd` when available
* Use ZSTD_THREADS for the number of threads, defaulted to
  BB_NUMBER_THREADS
* Cleanup bash variable use

Changes From [V1]:
* Switch to Zstandard rather than adding it as an option
* Specify 'zstd' threading and compression as arguments instead of
  using environment variables
  * Remove debug output
  * Non-posix if statements were removed as a result of replacing 'gzip'
    with 'zstd'

