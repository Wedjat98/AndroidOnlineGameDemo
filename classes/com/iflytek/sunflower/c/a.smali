.class public Lcom/iflytek/sunflower/c/a;
.super Ljava/lang/Object;


# static fields
.field public static a:[J

.field public static b:[[Ljava/lang/String;

.field private static c:[[Ljava/lang/String;

.field private static d:Lcom/iflytek/sunflower/c/f;

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v6, [J

    fill-array-data v0, :array_68

    sput-object v0, Lcom/iflytek/sunflower/c/a;->a:[J

    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "os.manufact"

    aput-object v2, v1, v4

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "os.model"

    aput-object v2, v1, v4

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "os.product"

    aput-object v2, v1, v4

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "os.display"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "os.user"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->USER:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/sunflower/c/a;->b:[[Ljava/lang/String;

    new-array v0, v5, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "os.hardware"

    aput-object v2, v1, v4

    const-string v2, "HARDWARE"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    sput-object v0, Lcom/iflytek/sunflower/c/a;->c:[[Ljava/lang/String;

    new-instance v0, Lcom/iflytek/sunflower/c/f;

    invoke-direct {v0}, Lcom/iflytek/sunflower/c/f;-><init>()V

    sput-object v0, Lcom/iflytek/sunflower/c/a;->d:Lcom/iflytek/sunflower/c/f;

    sput-boolean v4, Lcom/iflytek/sunflower/c/a;->e:Z

    return-void

    nop

    :array_68
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/iflytek/sunflower/c/f;
    .registers 4

    const-class v1, Lcom/iflytek/sunflower/c/a;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/iflytek/sunflower/c/a;->e:Z

    if-eqz v0, :cond_15

    sget-object v0, Lcom/iflytek/sunflower/c/a;->d:Lcom/iflytek/sunflower/c/f;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/iflytek/sunflower/c/a;->a(Landroid/content/Context;Lcom/iflytek/sunflower/c/f;Ljava/lang/Boolean;)V

    sget-object v0, Lcom/iflytek/sunflower/c/a;->d:Lcom/iflytek/sunflower/c/f;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_1b

    :goto_13
    monitor-exit v1

    return-object v0

    :cond_15
    :try_start_15
    invoke-static {p0}, Lcom/iflytek/sunflower/c/a;->b(Landroid/content/Context;)V

    sget-object v0, Lcom/iflytek/sunflower/c/a;->d:Lcom/iflytek/sunflower/c/f;
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1b

    goto :goto_13

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-class v0, Landroid/os/Build;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1a

    new-instance v1, Landroid/os/Build;

    invoke-direct {v1}, Landroid/os/Build;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_16

    move-result-object v0

    :goto_15
    return-object v0

    :catch_16
    move-exception v0

    const-string v0, ""

    goto :goto_15

    :cond_1a
    const-string v0, ""

    goto :goto_15
.end method

.method public static a(Landroid/content/Context;Lcom/iflytek/sunflower/c/f;Ljava/lang/Boolean;)V
    .registers 7

    if-nez p0, :cond_e

    const-string v0, "wap_proxy"

    const-string v1, ""

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/iflytek/sunflower/c/f;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_d
    return-void

    :cond_e
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_28

    const-string v0, "wap_proxy"

    const-string v1, ""

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/iflytek/sunflower/c/f;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_d

    :cond_28
    const-string v1, "wap_proxy"

    invoke-static {v0}, Lcom/iflytek/sunflower/c/h;->a(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/iflytek/sunflower/c/f;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "net_subtype"

    invoke-static {v0}, Lcom/iflytek/sunflower/c/h;->b(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v1, v0, v2}, Lcom/iflytek/sunflower/c/f;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_d
.end method

.method public static a(Lcom/iflytek/sunflower/c/f;Landroid/content/Context;)V
    .registers 7

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const-string v2, "app.ver.name"

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/iflytek/sunflower/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "app.ver.code"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/iflytek/sunflower/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "app.pkg"

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/sunflower/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "app.path"

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/sunflower/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "app.name"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/sunflower/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5a} :catch_5b

    :goto_5a
    return-void

    :catch_5b
    move-exception v0

    goto :goto_5a
.end method

.method private static b(Landroid/content/Context;)V
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    sget-object v0, Lcom/iflytek/sunflower/c/a;->d:Lcom/iflytek/sunflower/c/f;

    invoke-virtual {v0}, Lcom/iflytek/sunflower/c/f;->a()V

    sget-object v0, Lcom/iflytek/sunflower/c/a;->d:Lcom/iflytek/sunflower/c/f;

    const-string v2, "os.system"

    const-string v3, "Android"

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/sunflower/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/iflytek/sunflower/c/a;->d:Lcom/iflytek/sunflower/c/f;

    invoke-static {v0, p0}, Lcom/iflytek/sunflower/c/a;->a(Lcom/iflytek/sunflower/c/f;Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget-object v2, Lcom/iflytek/sunflower/c/a;->d:Lcom/iflytek/sunflower/c/f;

    const-string v3, "os.resolution"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/sunflower/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/iflytek/sunflower/c/a;->d:Lcom/iflytek/sunflower/c/f;

    const-string v3, "os.density"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/iflytek/sunflower/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sget-object v2, Lcom/iflytek/sunflower/c/a;->d:Lcom/iflytek/sunflower/c/f;

    const-string v3, "os.imei"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/sunflower/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/iflytek/sunflower/c/a;->d:Lcom/iflytek/sunflower/c/f;

    const-string v3, "os.imsi"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/iflytek/sunflower/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/iflytek/sunflower/c/a;->d:Lcom/iflytek/sunflower/c/f;

    const-string v2, "os.version"

    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/sunflower/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/iflytek/sunflower/c/a;->d:Lcom/iflytek/sunflower/c/f;

    const-string v2, "os.release"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/sunflower/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_8b
    sget-object v2, Lcom/iflytek/sunflower/c/a;->b:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_a6

    sget-object v2, Lcom/iflytek/sunflower/c/a;->d:Lcom/iflytek/sunflower/c/f;

    sget-object v3, Lcom/iflytek/sunflower/c/a;->b:[[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sget-object v4, Lcom/iflytek/sunflower/c/a;->b:[[Ljava/lang/String;

    aget-object v4, v4, v0

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/sunflower/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8b

    :cond_a6
    move v0, v1

    :goto_a7
    sget-object v2, Lcom/iflytek/sunflower/c/a;->c:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_c6

    sget-object v2, Lcom/iflytek/sunflower/c/a;->c:[[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/iflytek/sunflower/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/iflytek/sunflower/c/a;->d:Lcom/iflytek/sunflower/c/f;

    sget-object v4, Lcom/iflytek/sunflower/c/a;->c:[[Ljava/lang/String;

    aget-object v4, v4, v0

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4, v2}, Lcom/iflytek/sunflower/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a7

    :cond_c6
    sget-object v0, Lcom/iflytek/sunflower/c/a;->d:Lcom/iflytek/sunflower/c/f;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/iflytek/sunflower/c/a;->a(Landroid/content/Context;Lcom/iflytek/sunflower/c/f;Ljava/lang/Boolean;)V

    invoke-static {p0}, Lcom/iflytek/sunflower/c/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/iflytek/sunflower/c/a;->d:Lcom/iflytek/sunflower/c/f;

    const-string v3, "net.mac"

    invoke-virtual {v2, v3, v0}, Lcom/iflytek/sunflower/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/iflytek/sunflower/c/a;->e:Z
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_de} :catch_df

    :goto_de
    return-void

    :catch_df
    move-exception v0

    sput-boolean v1, Lcom/iflytek/sunflower/c/a;->e:Z

    goto :goto_de
.end method
