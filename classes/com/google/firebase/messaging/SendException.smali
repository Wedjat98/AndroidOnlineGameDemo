.class public final Lcom/google/firebase/messaging/SendException;
.super Ljava/lang/Exception;


# static fields
.field public static final ERROR_INVALID_PARAMETERS:I = 0x1

.field public static final ERROR_SIZE:I = 0x2

.field public static final ERROR_TOO_MANY_MESSAGES:I = 0x4

.field public static final ERROR_TTL_EXCEEDED:I = 0x3

.field public static final ERROR_UNKNOWN:I


# instance fields
.field private final mErrorCode:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 10

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1b

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const/4 v5, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_58

    :cond_18
    :goto_18
    packed-switch v5, :pswitch_data_6e

    :cond_1b
    move v0, v4

    :goto_1c
    :pswitch_1c
    iput v0, p0, Lcom/google/firebase/messaging/SendException;->mErrorCode:I

    return-void

    :sswitch_1f
    const-string v7, "invalid_parameters"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    move v5, v4

    goto :goto_18

    :sswitch_29
    const-string v7, "missing_to"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    move v5, v0

    goto :goto_18

    :sswitch_33
    const-string v7, "messagetoobig"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    move v5, v1

    goto :goto_18

    :sswitch_3d
    const-string v7, "service_not_available"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    move v5, v2

    goto :goto_18

    :sswitch_47
    const-string v7, "toomanymessages"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    move v5, v3

    goto :goto_18

    :pswitch_51
    move v0, v1

    goto :goto_1c

    :pswitch_53
    move v0, v2

    goto :goto_1c

    :pswitch_55
    move v0, v3

    goto :goto_1c

    nop

    :sswitch_data_58
    .sparse-switch
        -0x67e7c3ad -> :sswitch_3d
        -0x4cf26401 -> :sswitch_47
        -0x36e3eace -> :sswitch_1f
        -0x24c7160d -> :sswitch_33
        -0x5aa500c -> :sswitch_29
    .end sparse-switch

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_51
        :pswitch_53
        :pswitch_55
    .end packed-switch
.end method


# virtual methods
.method public final getErrorCode()I
    .registers 2

    iget v0, p0, Lcom/google/firebase/messaging/SendException;->mErrorCode:I

    return v0
.end method
