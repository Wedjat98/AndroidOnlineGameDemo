.class public Lcom/iflytek/cloud/thirdparty/Z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/cloud/thirdparty/ab;


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static b:Ljava/util/Random;


# instance fields
.field private c:J

.field private d:I

.field private e:Lcom/iflytek/cloud/thirdparty/aa;

.field private f:Z

.field private g:Lcom/iflytek/cloud/thirdparty/Y;

.field private h:J

.field private i:J

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/io/FileOutputStream;

.field private p:J

.field private q:J

.field private r:J

.field private s:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "attachment;\\s*filename\\s*=\\s*\"([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/Z;->a:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/Z;->b:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/Z;-><init>(JILandroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(JILandroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/iflytek/cloud/thirdparty/Z;->c:J

    iput p3, p0, Lcom/iflytek/cloud/thirdparty/Z;->d:I

    iput-object p4, p0, Lcom/iflytek/cloud/thirdparty/Z;->s:Landroid/content/Context;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/Y;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/Y;-><init>(Lcom/iflytek/cloud/thirdparty/ab;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/Z;->g:Lcom/iflytek/cloud/thirdparty/Y;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    sget-object v0, Lcom/iflytek/cloud/thirdparty/Z;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v0

    :goto_11
    return-object v0

    :catch_12
    move-exception v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_24

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    :cond_1f
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/iflytek/cloud/thirdparty/Z;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :cond_24
    if-nez v0, :cond_2a

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2a
    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/16 v4, 0x3f

    const/16 v3, 0x2f

    const/4 v1, 0x0

    if-nez v1, :cond_1b

    if-eqz p1, :cond_1b

    invoke-static {p1}, Lcom/iflytek/cloud/thirdparty/Z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_1b
    if-nez v1, :cond_6e

    if-eqz p2, :cond_6e

    invoke-static {p2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6e

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6e

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_6e

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_3f
    :goto_3f
    if-nez v0, :cond_61

    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_61

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_61

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_61

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_61

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_61
    if-nez v0, :cond_65

    const-string v0, "downloadfile"

    :cond_65
    const-string v1, "[^a-zA-Z0-9\\.\\-_]+"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6e
    move-object v0, v1

    goto :goto_3f
.end method

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_20

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_20
    if-nez v0, :cond_3a

    if-eqz p0, :cond_40

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    const-string v1, "text/html"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const-string v0, ".html"

    :cond_3a
    :goto_3a
    return-object v0

    :cond_3b
    if-eqz p1, :cond_3a

    const-string v0, ".txt"

    goto :goto_3a

    :cond_40
    if-eqz p1, :cond_3a

    const-string v0, ".bin"

    goto :goto_3a
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 12

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p1, p2, p3}, Lcom/iflytek/cloud/thirdparty/Z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-gez v2, :cond_4a

    invoke-static {p4, v5}, Lcom/iflytek/cloud/thirdparty/Z;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :goto_12
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p5}, Lcom/iflytek/cloud/thirdparty/Z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v4

    aput-object v0, v2, v5

    return-object v2

    :cond_4a
    invoke-static {p4, v1, v2}, Lcom/iflytek/cloud/thirdparty/Z;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_12
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3a

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3a

    :cond_39
    :goto_39
    return-object p0

    :cond_3a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v2, v0

    move v1, v0

    :goto_4f
    const v0, 0x3b9aca00

    if-ge v2, v0, :cond_b2

    const/4 v0, 0x0

    :goto_55
    const/16 v4, 0x9

    if-ge v0, v4, :cond_ae

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_a2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_39

    :cond_a2
    sget-object v4, Lcom/iflytek/cloud/thirdparty/Z;->b:Ljava/util/Random;

    invoke-virtual {v4, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    :cond_ae
    mul-int/lit8 v0, v2, 0xa

    move v2, v0

    goto :goto_4f

    :cond_b2
    const/4 p0, 0x0

    goto :goto_39
.end method

.method private e()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/Z;->o:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_c

    :try_start_5
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/Z;->o:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_f

    :goto_a
    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/Z;->o:Ljava/io/FileOutputStream;

    :cond_c
    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/Z;->k:Ljava/lang/String;

    return-void

    :catch_f
    move-exception v0

    goto :goto_a
.end method


# virtual methods
.method public a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStart, url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/Z;->f:Z

    if-eqz v0, :cond_1c

    const/4 v0, -0x2

    :goto_1b
    return v0

    :cond_1c
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/Z;->n:Ljava/lang/String;

    const-string v5, ".tmp"

    move-object v1, p4

    move-object v2, p6

    move-object/from16 v3, p7

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/iflytek/cloud/thirdparty/Z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/Z;->k:Ljava/lang/String;

    if-nez v1, :cond_43

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/Z;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/Z;->k:Ljava/lang/String;

    if-nez v1, :cond_39

    const/16 v0, 0x4e2a

    goto :goto_1b

    :cond_39
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/Z;->k:Ljava/lang/String;

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/Z;->k:Ljava/lang/String;

    :cond_43
    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/Z;->m:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStart, bytesRead : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/Z;->h:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", length : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStart, filename : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/Z;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extension : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/Z;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/W;->a()Z

    move-result v0

    if-eqz v0, :cond_a8

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/W;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/W;->a(Ljava/lang/String;)J

    move-result-wide v0

    :goto_9c
    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/Z;->h:J

    sub-long v2, p1, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_af

    const/16 v0, 0x4e2a

    goto/16 :goto_1b

    :cond_a8
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/Z;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/W;->a(Landroid/content/Context;)J

    move-result-wide v0

    goto :goto_9c

    :cond_af
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/Z;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_bf

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_bf
    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/Z;->f:Z

    if-eqz v0, :cond_c6

    const/4 v0, -0x2

    goto/16 :goto_1b

    :cond_c6
    const-string v0, "create file success"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;)V

    :try_start_cb
    iput-wide p1, p0, Lcom/iflytek/cloud/thirdparty/Z;->i:J

    iget-wide v0, p0, Lcom/iflytek/cloud/thirdparty/Z;->i:J

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/Z;->q:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/Z;->p:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/Z;->r:J

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/Z;->k:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/Z;->o:Ljava/io/FileOutputStream;

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/Z;->f:Z

    if-eqz v0, :cond_ef

    const/4 v0, -0x2

    goto/16 :goto_1b

    :cond_ef
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/Z;->e:Lcom/iflytek/cloud/thirdparty/aa;

    if-eqz v0, :cond_fe

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/Z;->e:Lcom/iflytek/cloud/thirdparty/aa;

    iget-object v5, p0, Lcom/iflytek/cloud/thirdparty/Z;->k:Ljava/lang/String;

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p5

    move-object v7, p0

    invoke-interface/range {v1 .. v7}, Lcom/iflytek/cloud/thirdparty/aa;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/Z;)V
    :try_end_fe
    .catch Ljava/io/FileNotFoundException; {:try_start_cb .. :try_end_fe} :catch_101

    :cond_fe
    const/4 v0, 0x0

    goto/16 :goto_1b

    :catch_101
    move-exception v0

    const-string v1, "onStart, create file error"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x4e2a

    goto/16 :goto_1b
.end method

.method public a([BI)I
    .registers 11

    const/4 v1, 0x0

    const/4 v0, -0x2

    iget-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/Z;->f:Z

    if-eqz v2, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    :try_start_7
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/Z;->o:Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, p2}, Ljava/io/FileOutputStream;->write([BII)V

    iget-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/Z;->f:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/Z;->o:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    iget-boolean v2, p0, Lcom/iflytek/cloud/thirdparty/Z;->f:Z

    if-nez v2, :cond_6

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/Z;->h:J

    int-to-long v4, p2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/iflytek/cloud/thirdparty/Z;->h:J

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/Z;->e:Lcom/iflytek/cloud/thirdparty/aa;

    if-eqz v0, :cond_53

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/Z;->h:J

    iget-wide v4, p0, Lcom/iflytek/cloud/thirdparty/Z;->r:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/iflytek/cloud/thirdparty/Z;->q:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_53

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/iflytek/cloud/thirdparty/Z;->p:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x28

    cmp-long v0, v4, v6

    if-ltz v0, :cond_53

    iget-wide v4, p0, Lcom/iflytek/cloud/thirdparty/Z;->h:J

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    iget-wide v6, p0, Lcom/iflytek/cloud/thirdparty/Z;->i:J

    div-long/2addr v4, v6

    long-to-int v0, v4

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/Z;->e:Lcom/iflytek/cloud/thirdparty/aa;

    iget-wide v6, p0, Lcom/iflytek/cloud/thirdparty/Z;->h:J

    invoke-interface {v4, v6, v7, v0, p0}, Lcom/iflytek/cloud/thirdparty/aa;->a(JILcom/iflytek/cloud/thirdparty/Z;)V

    iget-wide v4, p0, Lcom/iflytek/cloud/thirdparty/Z;->h:J

    iput-wide v4, p0, Lcom/iflytek/cloud/thirdparty/Z;->r:J

    iput-wide v2, p0, Lcom/iflytek/cloud/thirdparty/Z;->p:J
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_53} :catch_55

    :cond_53
    move v0, v1

    goto :goto_6

    :catch_55
    move-exception v0

    const/16 v0, 0x4e2a

    goto :goto_6
.end method

.method public declared-synchronized a()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/Z;->f:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/Z;->g:Lcom/iflytek/cloud/thirdparty/Y;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/Y;->a()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/Z;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/Z;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_21
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/Z;->e()V
    :try_end_24
    .catchall {:try_start_2 .. :try_end_24} :catchall_26

    monitor-exit p0

    return-void

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->c(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/Z;->f:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/Z;->e:Lcom/iflytek/cloud/thirdparty/aa;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/Z;->e:Lcom/iflytek/cloud/thirdparty/aa;

    invoke-interface {v0, p1, p0}, Lcom/iflytek/cloud/thirdparty/aa;->a(ILcom/iflytek/cloud/thirdparty/Z;)V

    :cond_23
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/Z;->e()V

    return-void
.end method

.method public a(Lcom/iflytek/cloud/thirdparty/aa;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/Z;->e:Lcom/iflytek/cloud/thirdparty/aa;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 12

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentPath : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", specifiedPath : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/Z;->k:Ljava/lang/String;

    if-eqz p2, :cond_88

    move-object v0, p2

    :goto_33
    iput-object p3, p0, Lcom/iflytek/cloud/thirdparty/Z;->j:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/iflytek/cloud/thirdparty/Z;->l:Z

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_9d

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_8a

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/Z;->n:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/iflytek/cloud/thirdparty/Z;->l:Z

    :cond_4c
    :goto_4c
    iput-wide v2, p0, Lcom/iflytek/cloud/thirdparty/Z;->h:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFileDir : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/Z;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBytesRead : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/iflytek/cloud/thirdparty/Z;->h:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSpecifiedPath : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/Z;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/Z;->g:Lcom/iflytek/cloud/thirdparty/Y;

    const/16 v5, 0x1000

    move-object v1, p1

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/cloud/thirdparty/Y;->a(Ljava/lang/String;JLjava/lang/String;I)V

    return-void

    :cond_88
    move-object v0, p3

    goto :goto_33

    :cond_8a
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/cloud/thirdparty/Z;->n:Ljava/lang/String;

    if-eqz p2, :cond_4c

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/Z;->k:Ljava/lang/String;

    goto :goto_4c

    :cond_9d
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_aa

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/Z;->n:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/iflytek/cloud/thirdparty/Z;->l:Z

    goto :goto_4c

    :cond_aa
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/Z;->n:Ljava/lang/String;

    goto :goto_4c
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lcom/iflytek/cloud/thirdparty/Z;->c:J

    return-wide v0
.end method

.method public c()V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinish | cover = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/Z;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mFilename = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/Z;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSpecifiedPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/Z;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->d(Ljava/lang/String;)V

    :try_start_30
    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/Z;->l:Z

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/Z;->j:Ljava/lang/String;

    :goto_36
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_44
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/Z;->k:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    iget-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/Z;->f:Z

    if-nez v1, :cond_5b

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/Z;->e:Lcom/iflytek/cloud/thirdparty/aa;

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/Z;->e:Lcom/iflytek/cloud/thirdparty/aa;

    invoke-interface {v1, v0, p0}, Lcom/iflytek/cloud/thirdparty/aa;->a(Ljava/lang/String;Lcom/iflytek/cloud/thirdparty/Z;)V

    :cond_5b
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/Z;->e()V

    :goto_5e
    return-void

    :cond_5f
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/Z;->k:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/Z;->k:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/Z;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_73} :catch_75

    move-result-object v0

    goto :goto_36

    :catch_75
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v0, 0x4e2e

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/Z;->a(I)V

    goto :goto_5e
.end method

.method public d()V
    .registers 2

    const-string v0, "onCancel"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/Z;->e()V

    return-void
.end method
