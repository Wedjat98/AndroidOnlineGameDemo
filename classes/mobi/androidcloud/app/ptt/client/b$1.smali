.class final synthetic Lmobi/androidcloud/app/ptt/client/b$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/androidcloud/app/ptt/client/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic fY:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 120
    invoke-static {}, Lmobi/androidcloud/lib/session/e;->kg()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmobi/androidcloud/app/ptt/client/b$1;->fY:[I

    :try_start_9
    sget-object v0, Lmobi/androidcloud/app/ptt/client/b$1;->fY:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_f} :catch_20

    :goto_f
    :try_start_f
    sget-object v0, Lmobi/androidcloud/app/ptt/client/b$1;->fY:[I

    const/4 v1, 0x2

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_15} :catch_1e

    :goto_15
    :try_start_15
    sget-object v0, Lmobi/androidcloud/app/ptt/client/b$1;->fY:[I

    const/4 v1, 0x1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1b} :catch_1c

    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    goto :goto_1b

    :catch_1e
    move-exception v0

    goto :goto_15

    :catch_20
    move-exception v0

    goto :goto_f
.end method
