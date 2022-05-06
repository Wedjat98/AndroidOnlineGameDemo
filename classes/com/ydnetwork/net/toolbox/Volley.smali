.class public Lcom/ydnetwork/net/toolbox/Volley;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_CACHE_DIR:Ljava/lang/String; = "volley"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newRequestQueue(Landroid/content/Context;)Lcom/ydnetwork/net/RequestQueue;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ydnetwork/net/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/ydnetwork/net/toolbox/HttpStack;)Lcom/ydnetwork/net/RequestQueue;

    move-result-object v0

    return-object v0
.end method

.method public static newRequestQueue(Landroid/content/Context;I)Lcom/ydnetwork/net/RequestQueue;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/ydnetwork/net/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/ydnetwork/net/toolbox/HttpStack;I)Lcom/ydnetwork/net/RequestQueue;

    move-result-object v0

    return-object v0
.end method

.method public static newRequestQueue(Landroid/content/Context;Lcom/ydnetwork/net/toolbox/HttpStack;)Lcom/ydnetwork/net/RequestQueue;
    .registers 3

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/ydnetwork/net/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/ydnetwork/net/toolbox/HttpStack;I)Lcom/ydnetwork/net/RequestQueue;

    move-result-object v0

    return-object v0
.end method

.method public static newRequestQueue(Landroid/content/Context;Lcom/ydnetwork/net/toolbox/HttpStack;I)Lcom/ydnetwork/net/RequestQueue;
    .registers 8

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "volley"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v0, "volley/0"

    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_32} :catch_6b

    move-result-object v0

    :goto_33
    if-nez p1, :cond_40

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_56

    new-instance p1, Lcom/ydnetwork/net/toolbox/HurlStack;

    invoke-direct {p1}, Lcom/ydnetwork/net/toolbox/HurlStack;-><init>()V

    :cond_40
    :goto_40
    new-instance v2, Lcom/ydnetwork/net/toolbox/BasicNetwork;

    invoke-direct {v2, p1}, Lcom/ydnetwork/net/toolbox/BasicNetwork;-><init>(Lcom/ydnetwork/net/toolbox/HttpStack;)V

    const/4 v0, -0x1

    if-gt p2, v0, :cond_60

    new-instance v0, Lcom/ydnetwork/net/RequestQueue;

    new-instance v3, Lcom/ydnetwork/net/toolbox/DiskBasedCache;

    invoke-direct {v3, v1}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3, v2}, Lcom/ydnetwork/net/RequestQueue;-><init>(Lcom/ydnetwork/net/Cache;Lcom/ydnetwork/net/Network;)V

    :goto_52
    invoke-virtual {v0}, Lcom/ydnetwork/net/RequestQueue;->start()V

    return-object v0

    :cond_56
    new-instance p1, Lcom/ydnetwork/net/toolbox/HttpClientStack;

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ydnetwork/net/toolbox/HttpClientStack;-><init>(Lorg/apache/http/client/HttpClient;)V

    goto :goto_40

    :cond_60
    new-instance v0, Lcom/ydnetwork/net/RequestQueue;

    new-instance v3, Lcom/ydnetwork/net/toolbox/DiskBasedCache;

    invoke-direct {v3, v1, p2}, Lcom/ydnetwork/net/toolbox/DiskBasedCache;-><init>(Ljava/io/File;I)V

    invoke-direct {v0, v3, v2}, Lcom/ydnetwork/net/RequestQueue;-><init>(Lcom/ydnetwork/net/Cache;Lcom/ydnetwork/net/Network;)V

    goto :goto_52

    :catch_6b
    move-exception v2

    goto :goto_33
.end method
