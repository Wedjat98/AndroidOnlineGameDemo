.class Lcom/qiniu/android/http/Client$IpTag;
.super Ljava/lang/Object;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/http/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IpTag"
.end annotation


# instance fields
.field public ip:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qiniu/android/http/Client$IpTag;->ip:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/qiniu/android/http/Client$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/qiniu/android/http/Client$1;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/qiniu/android/http/Client$IpTag;-><init>()V

    return-void
.end method
