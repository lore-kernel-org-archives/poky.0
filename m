Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
 by mx.groups.io with SMTP id smtpd.web10.7509.1588434674089458736
 for <poky@lists.yoctoproject.org>;
 Sat, 02 May 2020 08:51:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=pzvTj85v;
 spf=pass (domain: gmail.com, ip: 209.85.208.172, mailfrom: giannipinounavolta@gmail.com)
Received: by mail-lj1-f172.google.com with SMTP id a21so5351338ljb.9
        for <poky@lists.yoctoproject.org>; Sat, 02 May 2020 08:51:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=YVU2Cnl4TbQPEZY9TL1beDS1h7Rwvn6GBuYKVMHzsW8=;
        b=pzvTj85vumh67LeNKYnXaDbRi3f+q5hO8uJFANlIHfJgJj47s2sidbqlK0rb4FmGFJ
         GxkYBHEw6eok9JF2+lm3HZgcNqAxjCOCT2jawvUa4peI786pvU1f6Dx4PYZvrt7tNhK0
         q7jW0l80OaStpVurN+CF0Hh5TtpXGjZ5uqzzAfWb7WmdvWuW10CLOTBLkfjLiZCv3qui
         8BQwTrKLtLvju3dFzZlWrsBWlZcedS8cVtYVav+xgkVAG7tZfQaPH3HDGxpAvmtvKf47
         atQUDcMAmslkwiPA/RWvoOh/fA17bcWByvJtzc6CbYeC5U/jw80BwBO9/KErS8SCZYal
         sViQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=YVU2Cnl4TbQPEZY9TL1beDS1h7Rwvn6GBuYKVMHzsW8=;
        b=iVSoPrTNtX1Zq0AttZ0LpGgLTgiTbkbuV3ZFUtUCPxsvO3zOeOj9wBkTWavZQ3hW5F
         Vjs3nsyYb+YtXulGXESgbQUaxR/3Cv6F9J5jPkT+Xyrdjand/2jGkO/5y4jH4c+zGFGU
         MRXa9jqsRFLFMFU0YfT/CnpERr/tzuodf71vPC4nIQE1k9Cs4DSUo1LMPOhOkrsLtjFy
         UcL3GBKS6wPFsGgQybjeUBLHeh9lUQHBcZADett+atLUCqgDEdnlFYXfsvVBQtNfx32c
         J6VjNqU8yMP82pD/nYKbluqSEtNxG+X7pPzlVcM2+PNurrPwvZhF6J+Gtd/KOg6yIYuu
         l1aQ==
X-Gm-Message-State: AGi0PuYjUm3HNScWbFTo1AYL0UXj9+1KUNmNXTuzeqJPtRinqvkARPZz
	dZ2c2+y4AcI5SPonUpqRZxGermqn7BI8PDWSoduOK9m+
X-Google-Smtp-Source: APiQypKy9a3/j4JxlM/7zFMkOP5ss46zPpQOITTx9xA2nULNMiEkqri4kXzn/riHovOmeBYsKoZQ1NWLxYAI+sXvFlI=
X-Received: by 2002:a2e:a58e:: with SMTP id m14mr5398286ljp.95.1588434672228;
 Sat, 02 May 2020 08:51:12 -0700 (PDT)
MIME-Version: 1.0
From: giannipinounavolta@gmail.com
Date: Sat, 2 May 2020 17:51:00 +0200
Message-ID: <CAP1wPpqhBLXBu9qNLtbRmjz=-R3TBROZrch0SzTcGToBzo0vzA@mail.gmail.com>
Subject: [poky] Dunfell poky version
To: poky <poky@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000631ab605a4ac4429"

--000000000000631ab605a4ac4429
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

last month the poky version Dunfell was released. How long does it take to
be a stable release?

thanks.

--000000000000631ab605a4ac4429
Content-Type: text/html; charset="UTF-8"

<div dir="auto"><div dir="auto">Hi everyone,</div><div dir="auto"><br></div><div dir="auto">last month the poky version Dunfell was released. How long does it take to be a stable release?</div><div dir="auto"><br></div><div dir="auto">thanks.</div></div>

--000000000000631ab605a4ac4429--
