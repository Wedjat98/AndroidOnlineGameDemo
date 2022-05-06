.class public Lcom/yunding/analysis/sdk/YundingKeyData;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/String;

.field static b:Lcom/ydnetwork/net/RequestQueue;

.field static c:Landroid/os/Handler;

.field private static d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "YundingKeyData"

    sput-object v0, Lcom/yunding/analysis/sdk/YundingKeyData;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/yunding/analysis/sdk/YundingKeyData;->b:Lcom/ydnetwork/net/RequestQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/yunding/analysis/sdk/YundingKeyData;->d:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/yunding/analysis/sdk/YundingKeyData;->c:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InitSDK(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {p0}, Lcom/yunding/analysis/b/f;->c(Landroid/content/Context;)V

    const-string v0, "10000905"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "10000905"

    invoke-static {p0, v0}, Lcom/yunding/analysis/sdk/YundingKeyData;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_11
    invoke-static {p3}, Lcom/yunding/analysis/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    sget-object v0, Lcom/yunding/analysis/sdk/YundingKeyData;->a:Ljava/lang/String;

    const-string v1, "==================   Init YundingKeyData SDK 2.1.1.3  Success    =================="

    invoke-static {v0, v1}, Lcom/yunding/analysis/b/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/yunding/analysis/b/b;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yunding/analysis/a/a;->a(I)V

    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yunding/analysis/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/yunding/analysis/a/a;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ydnetwork/net/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/ydnetwork/net/RequestQueue;

    move-result-object v0

    sput-object v0, Lcom/yunding/analysis/sdk/YundingKeyData;->b:Lcom/ydnetwork/net/RequestQueue;

    const-string v0, "AppFameDatabase.db"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/yunding/analysis/b/k;->a(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/yunding/analysis/sdk/YundingKeyData;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/yunding/analysis/sdk/YundingKeyData;->d()V

    :goto_4c
    return-void

    :cond_4d
    sget-object v0, Lcom/yunding/analysis/sdk/YundingKeyData;->a:Ljava/lang/String;

    const-string v1, "( -_- )....Init YundingKeyData SDK failed,please check if channel is right!"

    invoke-static {v0, v1}, Lcom/yunding/analysis/b/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "ChannelConfig.properties"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v1, "appfame_channelid"

    invoke-virtual {v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_19} :catch_1b

    move-result-object v0

    :goto_1a
    return-object v0

    :catch_1b
    move-exception v1

    goto :goto_1a
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/yunding/analysis/sdk/YundingKeyData;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    move-object p1, v0

    :cond_b
    return-object p1
.end method

.method static synthetic a()Ljava/util/ArrayList;
    .registers 1

    sget-object v0, Lcom/yunding/analysis/sdk/YundingKeyData;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yunding/analysis/a/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yunding/analysis/b/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/yunding/analysis/sdk/YundingKeyData;->a:Ljava/lang/String;

    const-string v1, "YundingKeyData.setUserInfo() must be called before."

    invoke-static {v0, v1}, Lcom/yunding/analysis/b/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    return-void

    :cond_16
    invoke-static {p0, p1, p2}, Lcom/yunding/analysis/sdk/YundingKeyData;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method

.method private static a(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/yunding/analysis/sdk/YundingKeyData;->a:Ljava/lang/String;

    const-string v1, "parameters %s is unqualified, Please check the input."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yunding/analysis/b/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/yunding/analysis/sdk/YundingKeyData;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b()V
    .registers 0

    invoke-static {}, Lcom/yunding/analysis/sdk/YundingKeyData;->d()V

    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/yunding/analysis/a/b$a$a;->a:Ljava/lang/String;

    invoke-static {}, Lcom/yunding/analysis/sdk/YundingKeyData;->c()Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v0, Lcom/yunding/analysis/a/b$a$b;->a:Ljava/lang/String;

    :cond_a
    const-string v1, "Start Report"

    invoke-static {p0, v0, v1}, Lcom/yunding/analysis/sdk/YundingKeyData;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Lcom/yunding/analysis/b/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yunding/analysis/a/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yunding/analysis/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {p0}, Lcom/yunding/analysis/b/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no"

    invoke-static {p1, v0, p2, v1}, Lcom/yunding/analysis/b/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_1f
    sget-object v0, Lcom/yunding/analysis/sdk/YundingKeyData;->a:Ljava/lang/String;

    const-string v1, "( -_- )....Init YundingKeyData SDK failed,please check if channel is right!"

    invoke-static {v0, v1}, Lcom/yunding/analysis/b/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v1, 0x1

    sget-object v0, Lcom/yunding/analysis/sdk/YundingKeyData;->a:Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\nurl:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yunding/analysis/b/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/yunding/analysis/sdk/YundingKeyData$5;

    new-instance v3, Lcom/yunding/analysis/sdk/YundingKeyData$3;

    invoke-direct {v3, p1, p2, p0}, Lcom/yunding/analysis/sdk/YundingKeyData$3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/yunding/analysis/sdk/YundingKeyData$4;

    invoke-direct {v4, p1, p2, p0}, Lcom/yunding/analysis/sdk/YundingKeyData$4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/yunding/analysis/sdk/YundingKeyData$5;-><init>(ILjava/lang/String;Lcom/ydnetwork/net/Response$Listener;Lcom/ydnetwork/net/Response$ErrorListener;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/ydnetwork/net/toolbox/StringRequest;->setShouldCache(Z)Lcom/ydnetwork/net/Request;

    new-instance v2, Lcom/ydnetwork/net/DefaultRetryPolicy;

    const/16 v3, 0x2710

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v1, v4}, Lcom/ydnetwork/net/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v2}, Lcom/ydnetwork/net/toolbox/StringRequest;->setRetryPolicy(Lcom/ydnetwork/net/RetryPolicy;)Lcom/ydnetwork/net/Request;

    sget-object v1, Lcom/yunding/analysis/sdk/YundingKeyData;->b:Lcom/ydnetwork/net/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/ydnetwork/net/RequestQueue;->add(Lcom/ydnetwork/net/Request;)Lcom/ydnetwork/net/Request;

    return-void
.end method

.method private static c()Z
    .registers 3

    const/4 v0, 0x1

    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yunding/analysis/a/a;->a()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yunding/analysis/a/a;->a()I

    move-result v1

    const/16 v2, 0x1388

    if-le v1, v2, :cond_26

    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yunding/analysis/a/a;->a()I

    move-result v1

    const/16 v2, 0x1770

    if-lt v1, v2, :cond_d

    :cond_26
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static costracking(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/yunding/analysis/b/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "actionID"

    invoke-static {v0}, Lcom/yunding/analysis/sdk/YundingKeyData;->a(Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    invoke-static {p2}, Lcom/yunding/analysis/b/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "actionIDDes"

    invoke-static {v0}, Lcom/yunding/analysis/sdk/YundingKeyData;->a(Ljava/lang/String;)V

    goto :goto_b

    :cond_18
    if-gez p3, :cond_20

    const-string v0, "itemNumber"

    invoke-static {v0}, Lcom/yunding/analysis/sdk/YundingKeyData;->a(Ljava/lang/String;)V

    goto :goto_b

    :cond_20
    if-eqz p4, :cond_2b

    const/4 v0, 0x1

    if-eq p4, v0, :cond_2b

    const-string v0, "changeType"

    invoke-static {v0}, Lcom/yunding/analysis/sdk/YundingKeyData;->a(Ljava/lang/String;)V

    goto :goto_b

    :cond_2b
    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yunding/analysis/a/a;->n(Ljava/lang/String;)V

    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yunding/analysis/a/a;->o(Ljava/lang/String;)V

    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yunding/analysis/a/a;->p(Ljava/lang/String;)V

    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yunding/analysis/a/a;->q(Ljava/lang/String;)V

    sget-object v0, Lcom/yunding/analysis/a/b$a$a;->e:Ljava/lang/String;

    invoke-static {}, Lcom/yunding/analysis/sdk/YundingKeyData;->c()Z

    move-result v1

    if-nez v1, :cond_59

    sget-object v0, Lcom/yunding/analysis/a/b$a$b;->e:Ljava/lang/String;

    :cond_59
    const-string v1, "Cost Report"

    invoke-static {p0, v0, v1}, Lcom/yunding/analysis/sdk/YundingKeyData;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method private static d()V
    .registers 4

    sget-object v0, Lcom/yunding/analysis/sdk/YundingKeyData;->c:Landroid/os/Handler;

    new-instance v1, Lcom/yunding/analysis/sdk/YundingKeyData$1;

    invoke-direct {v1}, Lcom/yunding/analysis/sdk/YundingKeyData$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/yunding/analysis/sdk/YundingKeyData;->c:Landroid/os/Handler;

    new-instance v1, Lcom/yunding/analysis/sdk/YundingKeyData$2;

    invoke-direct {v1}, Lcom/yunding/analysis/sdk/YundingKeyData$2;-><init>()V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static getChannel()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/yunding/analysis/sdk/YundingKeyData;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "What channel you get is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yunding/analysis/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yunding/analysis/b/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yunding/analysis/a/a;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static missionInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/yunding/analysis/b/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "missionId"

    invoke-static {v0}, Lcom/yunding/analysis/sdk/YundingKeyData;->a(Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    invoke-static {p2}, Lcom/yunding/analysis/b/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_27

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Main"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    :cond_27
    const-string v0, "missionType"

    invoke-static {v0}, Lcom/yunding/analysis/sdk/YundingKeyData;->a(Ljava/lang/String;)V

    goto :goto_b

    :cond_2d
    const/4 v0, 0x1

    if-eq p3, v0, :cond_39

    const/4 v0, 0x2

    if-eq p3, v0, :cond_39

    const-string v0, "missionStatu"

    invoke-static {v0}, Lcom/yunding/analysis/sdk/YundingKeyData;->a(Ljava/lang/String;)V

    goto :goto_b

    :cond_39
    if-gez p4, :cond_41

    const-string v0, "missionStar"

    invoke-static {v0}, Lcom/yunding/analysis/sdk/YundingKeyData;->a(Ljava/lang/String;)V

    goto :goto_b

    :cond_41
    const/4 v0, -0x1

    if-ge p5, v0, :cond_4a

    const-string v0, "missCostTime"

    invoke-static {v0}, Lcom/yunding/analysis/sdk/YundingKeyData;->a(Ljava/lang/String;)V

    goto :goto_b

    :cond_4a
    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yunding/analysis/a/a;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yunding/analysis/a/a;->j(Ljava/lang/String;)V

    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yunding/analysis/a/a;->k(Ljava/lang/String;)V

    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yunding/analysis/a/a;->l(Ljava/lang/String;)V

    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v0

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yunding/analysis/a/a;->m(Ljava/lang/String;)V

    sget-object v0, Lcom/yunding/analysis/a/b$a$a;->d:Ljava/lang/String;

    invoke-static {}, Lcom/yunding/analysis/sdk/YundingKeyData;->c()Z

    move-result v1

    if-nez v1, :cond_83

    sget-object v0, Lcom/yunding/analysis/a/b$a$b;->d:Ljava/lang/String;

    :cond_83
    const-string v1, "Mission Report"

    invoke-static {p0, v0, v1}, Lcom/yunding/analysis/sdk/YundingKeyData;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public static setLogShow(Z)V
    .registers 2

    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yunding/analysis/a/a;->d(Z)V

    return-void
.end method

.method public static setUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;JJJ)V
    .registers 18
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/yunding/analysis/b/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 p3, 0x0

    :cond_b
    invoke-static {p4}, Lcom/yunding/analysis/b/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string p4, ""

    :cond_13
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/yunding/analysis/b/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 p5, 0x0

    :cond_1e
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/yunding/analysis/b/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 p6, 0x0

    :cond_29
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/yunding/analysis/b/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 p7, 0x0

    :cond_34
    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/yunding/analysis/b/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const-wide/16 p14, 0x0

    :cond_40
    invoke-static {p0}, Lcom/yunding/analysis/b/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_54

    :cond_4e
    const-string v0, "accountId"

    invoke-static {v0}, Lcom/yunding/analysis/sdk/YundingKeyData;->a(Ljava/lang/String;)V

    :goto_53
    return-void

    :cond_54
    invoke-static {p1}, Lcom/yunding/analysis/b/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_68

    :cond_62
    const-string v0, "roleId"

    invoke-static {v0}, Lcom/yunding/analysis/sdk/YundingKeyData;->a(Ljava/lang/String;)V

    goto :goto_53

    :cond_68
    invoke-static {p2}, Lcom/yunding/analysis/b/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_7c

    :cond_76
    const-string v0, "roleName"

    invoke-static {v0}, Lcom/yunding/analysis/sdk/YundingKeyData;->a(Ljava/lang/String;)V

    goto :goto_53

    :cond_7c
    const/4 v0, 0x1

    if-eq p3, v0, :cond_8a

    const/4 v0, 0x2

    if-eq p3, v0, :cond_8a

    if-eqz p3, :cond_8a

    const-string v0, "roleSex"

    invoke-static {v0}, Lcom/yunding/analysis/sdk/YundingKeyData;->a(Ljava/lang/String;)V

    goto :goto_53

    :cond_8a
    invoke-static {p4}, Lcom/yunding/analysis/b/g;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    const-string v0, "roleJob"

    invoke-static {v0}, Lcom/yunding/analysis/sdk/YundingKeyData;->a(Ljava/lang/String;)V

    goto :goto_53

    :cond_96
    if-ltz p5, :cond_a4

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_aa

    :cond_a4
    const-string v0, "roleLevel"

    invoke-static {v0}, Lcom/yunding/analysis/sdk/YundingKeyData;->a(Ljava/lang/String;)V

    goto :goto_53

    :cond_aa
    if-ltz p6, :cond_b8

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_be

    :cond_b8
    const-string v0, "vipLevel"

    invoke-static {v0}, Lcom/yunding/analysis/sdk/YundingKeyData;->a(Ljava/lang/String;)V

    goto :goto_53

    :cond_be
    if-ltz p7, :cond_cc

    invoke-static {p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_d2

    :cond_cc
    const-string v0, "vipExp"

    invoke-static {v0}, Lcom/yunding/analysis/sdk/YundingKeyData;->a(Ljava/lang/String;)V

    goto :goto_53

    :cond_d2
    invoke-static {p8}, Lcom/yunding/analysis/b/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e0

    invoke-virtual {p8}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_e7

    :cond_e0
    const-string v0, "serverId"

    invoke-static {v0}, Lcom/yunding/analysis/sdk/YundingKeyData;->a(Ljava/lang/String;)V

    goto/16 :goto_53

    :cond_e7
    invoke-static {p10, p11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_fa

    const-string v0, "firstCurrency"

    invoke-static {v0}, Lcom/yunding/analysis/sdk/YundingKeyData;->a(Ljava/lang/String;)V

    goto/16 :goto_53

    :cond_fa
    invoke-static {p12, p13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_10d

    const-string v0, "secondCurrency"

    invoke-static {v0}, Lcom/yunding/analysis/sdk/YundingKeyData;->a(Ljava/lang/String;)V

    goto/16 :goto_53

    :cond_10d
    invoke-static/range {p14 .. p15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_120

    const-string v0, "fightingPower"

    invoke-static {v0}, Lcom/yunding/analysis/sdk/YundingKeyData;->a(Ljava/lang/String;)V

    goto/16 :goto_53

    :cond_120
    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yunding/analysis/a/a;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yunding/analysis/a/a;->w(Ljava/lang/String;)V

    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yunding/analysis/a/a;->x(Ljava/lang/String;)V

    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yunding/analysis/a/a;->u(Ljava/lang/String;)V

    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/yunding/analysis/a/a;->v(Ljava/lang/String;)V

    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v0

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yunding/analysis/a/a;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v0

    invoke-virtual {v0, p8}, Lcom/yunding/analysis/a/a;->y(Ljava/lang/String;)V

    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v0

    invoke-virtual {v0, p9}, Lcom/yunding/analysis/a/a;->z(Ljava/lang/String;)V

    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v0

    invoke-static {p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yunding/analysis/a/a;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v0

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yunding/analysis/a/a;->f(Ljava/lang/String;)V

    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v0

    invoke-static {p10, p11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yunding/analysis/a/a;->r(Ljava/lang/String;)V

    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v0

    invoke-static {p12, p13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yunding/analysis/a/a;->s(Ljava/lang/String;)V

    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v0

    invoke-static/range {p14 .. p15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yunding/analysis/a/a;->t(Ljava/lang/String;)V

    goto/16 :goto_53
.end method

.method public static updateUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;JJ)V
    .registers 28

    const/4 v3, 0x0

    const-string v4, ""

    const-string v9, ""

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v10, p7

    move-wide/from16 v14, p9

    invoke-static/range {v0 .. v15}, Lcom/yunding/analysis/sdk/YundingKeyData;->setUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;JJJ)V

    return-void
.end method

.method public static useRegEvent(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/yunding/analysis/a/b$a$a;->b:Ljava/lang/String;

    invoke-static {}, Lcom/yunding/analysis/sdk/YundingKeyData;->c()Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v0, Lcom/yunding/analysis/a/b$a$b;->b:Ljava/lang/String;

    :cond_a
    const-string v1, "Role reg Report"

    invoke-static {p0, v0, v1}, Lcom/yunding/analysis/sdk/YundingKeyData;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static userLoginEvent(Landroid/content/Context;)V
    .registers 5

    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/yunding/analysis/a/a;->h(Ljava/lang/String;)V

    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/yunding/analysis/a/a;->a(J)V

    sget-object v0, Lcom/yunding/analysis/a/b$a$a;->c:Ljava/lang/String;

    invoke-static {}, Lcom/yunding/analysis/sdk/YundingKeyData;->c()Z

    move-result v1

    if-nez v1, :cond_1e

    sget-object v0, Lcom/yunding/analysis/a/b$a$b;->c:Ljava/lang/String;

    :cond_1e
    const-string v1, "Role Login Report"

    invoke-static {p0, v0, v1}, Lcom/yunding/analysis/sdk/YundingKeyData;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static userLogoutEvent(Landroid/content/Context;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/yunding/analysis/a/a;->F()Lcom/yunding/analysis/a/a;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/yunding/analysis/a/a;->h(Ljava/lang/String;)V

    sget-object v0, Lcom/yunding/analysis/a/b$a$a;->c:Ljava/lang/String;

    invoke-static {}, Lcom/yunding/analysis/sdk/YundingKeyData;->c()Z

    move-result v1

    if-nez v1, :cond_13

    sget-object v0, Lcom/yunding/analysis/a/b$a$b;->c:Ljava/lang/String;

    :cond_13
    const-string v1, "Role Logout Report"

    invoke-static {p0, v0, v1}, Lcom/yunding/analysis/sdk/YundingKeyData;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/yunding/analysis/a/a;->G()V

    return-void
.end method
