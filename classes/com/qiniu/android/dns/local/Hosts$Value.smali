.class public Lcom/qiniu/android/dns/local/Hosts$Value;
.super Ljava/lang/Object;
.source "Hosts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/dns/local/Hosts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Value"
.end annotation


# instance fields
.field public final ip:Ljava/lang/String;

.field public final provider:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qiniu/android/dns/local/Hosts$Value;-><init>(Ljava/lang/String;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "provider"    # I

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/qiniu/android/dns/local/Hosts$Value;->ip:Ljava/lang/String;

    .line 75
    iput p2, p0, Lcom/qiniu/android/dns/local/Hosts$Value;->provider:I

    .line 76
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    if-ne p0, p1, :cond_5

    .line 90
    :cond_4
    :goto_4
    return v1

    .line 86
    :cond_5
    if-eqz p1, :cond_b

    instance-of v3, p1, Lcom/qiniu/android/dns/local/Hosts$Value;

    if-nez v3, :cond_d

    :cond_b
    move v1, v2

    .line 87
    goto :goto_4

    :cond_d
    move-object v0, p1

    .line 89
    check-cast v0, Lcom/qiniu/android/dns/local/Hosts$Value;

    .line 90
    .local v0, "another":Lcom/qiniu/android/dns/local/Hosts$Value;
    iget-object v3, p0, Lcom/qiniu/android/dns/local/Hosts$Value;->ip:Ljava/lang/String;

    iget-object v4, v0, Lcom/qiniu/android/dns/local/Hosts$Value;->ip:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    iget v3, p0, Lcom/qiniu/android/dns/local/Hosts$Value;->provider:I

    iget v4, v0, Lcom/qiniu/android/dns/local/Hosts$Value;->provider:I

    if-eq v3, v4, :cond_4

    :cond_20
    move v1, v2

    goto :goto_4
.end method
