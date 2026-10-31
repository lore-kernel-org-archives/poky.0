Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.3804.1793405953933460451
 for <poky@lists.yoctoproject.org>;
 Fri, 30 Oct 2026 17:19:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google2 header.b=XahLTmL6;
 spf=pass (domain: smile.fr, ip: 209.85.221.44, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-48e0d1da913so951544f8f.1
        for <poky@lists.yoctoproject.org>; Fri, 30 Oct 2026 17:19:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google2; t=1793405952; x=1794010752; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=07auPzfeEUrTBMJ32C/jqWFy2HEifT/Cz4jCGZ9W6B8=;
        b=XahLTmL6WwKlOmzjsKqTLgz5I/KuFU24XVlyNFC7YgbpE0s8SZMPt5clmhlDoNg3/J
         VMHXJBYq4ov0qK3TMpt2cw/vKvpvzemIHswmBNWIvVDSHfWGxbpijjACPwbnEz889G6H
         TjqUGgG/U0R9am5uMbM1nDqunn6NYuKBhzklEeGCcRQo0LU4lrA6E18aVE+xH0DlR07r
         z8jrVSCanEE7c1UAPuVETgGXvFjhZUCsW6DsM5kLI25HeSeoRGTWzOAEdQR1BKTBY2rX
         9KeZMVJkPRB+5rVzGC+wDbWwjeMedVBfb4GmT4mvNcLH9lyhxAVRXftJd9HHzXcU3kS1
         t2jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793405952; x=1794010752;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=07auPzfeEUrTBMJ32C/jqWFy2HEifT/Cz4jCGZ9W6B8=;
        b=ghx5onX7yr1RI/6X7M//FdjVGt9RSJX4OCaTObySurBQ2dmTNccRqMGDOc7VJF1zO1
         vlISNzo4PBsjxbHz2lak8QR+TiGWpN0MVt9lmenhEUldnqVKw2HVRUQUVm/Us/OKibnb
         GLnBuqiZKqbVvORHAv3jMRuly/OunAXo/pYVqaVtVlpDdZG6W/JRumv2tFxG9IzOOgTo
         Ydq636dWGEvlJg+Q0SE2JQZkKBdRyY392l3iKtPYxFlgBj3gs6jy7UMhiI32Bjlglf7Q
         Vd4URoD6nk1yo1Q0ZQ8LU8I8RJPkjhRgLjcdVVhGPVNRzBj8Zgl0uMw6uY1nY8fOVoeW
         6xXw==
X-Gm-Message-State: AFq9FYLYtux+t8ZWoXC7beL3EYFKGNEoH0ttJtPUvJYVSdwxEAsb2tlu
	w9fLAgw2Ds+BxFhwG0bB8v5pSTnTnO+UEDUoRmI3UWYVyCzljf3B0Bz7lioxeroUt2BZxrUjC8/
	J6AToJyM=
X-Gm-Gg: AYBFou1tQ2HVoV43fMwc9pXRyc1tuAtIOmWpsKJwl1NrtS1aIPIb1gaNmOLcgMFWMJr
	W2gJ+5A3AFYyIQfduFdRjUds2Ph1dzz8HydA8+LEXSpOQ0LHUZm2/e74jqeRDFnloVPFFk0Ga82
	35u3jW3rlgCHH5JUw2nYW04AQ9JVgZAsRsiqNyWHa+I2C/+rRinwNIjrZUfwmFLMe3L3zPnWEEN
	DbYSPTjnv2HYli6+ZH/jY8WjfcUT53eVIcJqjGPk/geU1Uk3/yCSbu5D6zULqZlzFm0dcZd7q7S
	6evsboDiMPijB8JeTGwZoyKpAZDIa35J4xsXLMrwHrd4Dg2zHibwjFj/qaUgUgcLCaunJnbbo5i
	zxZgoC5q4xlgzqr0fVHlzgHAUBxipgQgVSnFxojPW3Pkqxf6WyMU30EkdPyHU4+RRUfDGDtgBxd
	LbS9Vu0oJv+Eoe7hiljW5qlzqMZaYCYxrIpKauUPCDk34uBswPZqoEQybUN6fZSg00rtWytEE8D
	I974Jhln3HjVZnUGbGlE2ZbNht5xk68fAlnkY6TNyohlI37nNXBQULMuE5lLJBuFOzGJHZVuDvU
	vnQpxrFVSqiZTk3IwErdPi0Z6GhqWP7klsjUjDW3jaQ9+67fULpele65TV/i/wAKqQoY2iXjLrj
	mG/+HYtmC3Av03rwJJ3Q84DDyzdZMr1Q/UQ1hU9jjIXEvD0aZ+g4=
X-Received: by 2002:a05:6000:46cc:b0:48e:6f:19b2 with SMTP id ffacd0b85a97d-48e64cd95a5mr11641801f8f.25.1793405952082;
        Fri, 30 Oct 2026 17:19:12 -0700 (PDT)
Return-Path: <yoann.congal@smile.fr>
Received: from FRSMI25-LASER.home (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e71ba4ac6sm6140824f8f.52.2026.10.30.17.19.11
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Oct 2026 17:19:11 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][scarthgap 1/3] README.hardware.md: Add scarthgap subject-prefix to git-send-email suggestion
Date: Sat, 31 Oct 2026 01:19:07 +0100
Message-ID: <29ad73fccf6bc50ee59caa74872d326d9bb3b32b.1793405889.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <cover.1793405889.git.yoann.congal@smile.fr>
References: <cover.1793405889.git.yoann.congal@smile.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <poky@lists.yoctoproject.org>; Sat, 31 Oct 2026 00:19:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13982
Content-Type: text/plain; charset="utf-8"

From: Yoann Congal <yoann.congal@smile.fr>

That might help new users send correct first stable patches.

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 meta-yocto-bsp/README.hardware.md | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/README.hardware.md b/meta-yocto-bsp/README.hardware.md
index 6045c3d8..156785c4 100644
--- a/meta-yocto-bsp/README.hardware.md
+++ b/meta-yocto-bsp/README.hardware.md
@@ -41,7 +41,7 @@ for full details on how to submit changes.
 As a quick guide, patches should be sent to <poky@lists.yoctoproject.org>
 The git command to do that would be:
  
-     git send-email -M -1 --to poky@lists.yoctoproject.org
+     git send-email -M -1 --to poky@lists.yoctoproject.org --subject-prefix='scarthgap][PATCH'
 
 Send pull requests, patches, comments or questions about meta-yocto-bsp to 
 <poky@lists.yoctoproject.org>.
