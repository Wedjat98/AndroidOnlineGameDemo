.class Lcom/gm99/fzzj/MyPlatform$6$1;
.super Ljava/lang/Object;
.source "MyPlatform.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gm99/fzzj/MyPlatform$6;->onShareResult(Lonlysdk/framework/enumtype/ShareResultCode;Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$onlysdk$framework$enumtype$ShareResultCode:[I


# instance fields
.field final synthetic this$1:Lcom/gm99/fzzj/MyPlatform$6;

.field private final synthetic val$info_sharereg:Ljava/util/HashMap;

.field private final synthetic val$ret_sharereg:Lonlysdk/framework/enumtype/ShareResultCode;


# direct methods
.method static synthetic $SWITCH_TABLE$onlysdk$framework$enumtype$ShareResultCode()[I
    .registers 3

    .prologue
    .line 388
    sget-object v0, Lcom/gm99/fzzj/MyPlatform$6$1;->$SWITCH_TABLE$onlysdk$framework$enumtype$ShareResultCode:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lonlysdk/framework/enumtype/ShareResultCode;->values()[Lonlysdk/framework/enumtype/ShareResultCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lonlysdk/framework/enumtype/ShareResultCode;->kShareCancel:Lonlysdk/framework/enumtype/ShareResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/ShareResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_39

    :goto_15
    :try_start_15
    sget-object v1, Lonlysdk/framework/enumtype/ShareResultCode;->kShareFail:Lonlysdk/framework/enumtype/ShareResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/ShareResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_37

    :goto_1e
    :try_start_1e
    sget-object v1, Lonlysdk/framework/enumtype/ShareResultCode;->kShareNetworkError:Lonlysdk/framework/enumtype/ShareResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/ShareResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_35

    :goto_27
    :try_start_27
    sget-object v1, Lonlysdk/framework/enumtype/ShareResultCode;->kShareSuccess:Lonlysdk/framework/enumtype/ShareResultCode;

    invoke-virtual {v1}, Lonlysdk/framework/enumtype/ShareResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_33

    :goto_30
    sput-object v0, Lcom/gm99/fzzj/MyPlatform$6$1;->$SWITCH_TABLE$onlysdk$framework$enumtype$ShareResultCode:[I

    goto :goto_4

    :catch_33
    move-exception v1

    goto :goto_30

    :catch_35
    move-exception v1

    goto :goto_27

    :catch_37
    move-exception v1

    goto :goto_1e

    :catch_39
    move-exception v1

    goto :goto_15
.end method

.method constructor <init>(Lcom/gm99/fzzj/MyPlatform$6;Ljava/util/HashMap;Lonlysdk/framework/enumtype/ShareResultCode;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gm99/fzzj/MyPlatform$6$1;->this$1:Lcom/gm99/fzzj/MyPlatform$6;

    iput-object p2, p0, Lcom/gm99/fzzj/MyPlatform$6$1;->val$info_sharereg:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/gm99/fzzj/MyPlatform$6$1;->val$ret_sharereg:Lonlysdk/framework/enumtype/ShareResultCode;

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 391
    iget-object v2, p0, Lcom/gm99/fzzj/MyPlatform$6$1;->val$info_sharereg:Ljava/util/HashMap;

    const-string v3, "shareType"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 392
    .local v0, "par_shareType":Ljava/lang/String;
    if-eqz v0, :cond_10

    const-string v2, ""

    if-ne v0, v2, :cond_12

    .line 393
    :cond_10
    const-string v0, "all"

    .line 395
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{\"shareType\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, "strJson":Ljava/lang/String;
    invoke-static {}, Lcom/gm99/fzzj/MyPlatform$6$1;->$SWITCH_TABLE$onlysdk$framework$enumtype$ShareResultCode()[I

    move-result-object v2

    iget-object v3, p0, Lcom/gm99/fzzj/MyPlatform$6$1;->val$ret_sharereg:Lonlysdk/framework/enumtype/ShareResultCode;

    invoke-virtual {v3}, Lonlysdk/framework/enumtype/ShareResultCode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_42

    .line 413
    :goto_36
    :pswitch_36
    return-void

    .line 401
    :pswitch_37
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/ledo/fantasy/game/JniProxy;->onShareResult(ZLjava/lang/String;)V

    goto :goto_36

    .line 404
    :pswitch_3c
    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/ledo/fantasy/game/JniProxy;->onShareResult(ZLjava/lang/String;)V

    goto :goto_36

    .line 397
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_37
        :pswitch_3c
        :pswitch_36
        :pswitch_36
    .end packed-switch
.end method
