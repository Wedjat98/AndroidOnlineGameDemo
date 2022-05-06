.class public final Lmobi/androidcloud/lib/im/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private hv:Lmobi/androidcloud/lib/im/f;

.field private hw:I


# direct methods
.method public constructor <init>(Lmobi/androidcloud/lib/im/f;)V
    .registers 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lmobi/androidcloud/lib/im/j;->hw:I

    .line 26
    iput-object p1, p0, Lmobi/androidcloud/lib/im/j;->hv:Lmobi/androidcloud/lib/im/f;

    .line 27
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 14

    .prologue
    .line 39
    iget-object v0, p0, Lmobi/androidcloud/lib/im/j;->hv:Lmobi/androidcloud/lib/im/f;

    iget-object v0, v0, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    invoke-virtual {v0, p1}, Lmobi/androidcloud/lib/net/k;->setUrl(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lmobi/androidcloud/lib/im/j;->hv:Lmobi/androidcloud/lib/im/f;

    iget-object v0, v0, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    invoke-virtual {v0, p2}, Lmobi/androidcloud/lib/net/k;->N(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lmobi/androidcloud/lib/im/j;->hv:Lmobi/androidcloud/lib/im/f;

    iget-object v0, v0, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    invoke-virtual {v0, p3}, Lmobi/androidcloud/lib/net/k;->O(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lmobi/androidcloud/lib/im/j;->hv:Lmobi/androidcloud/lib/im/f;

    iget-object v0, v0, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    invoke-virtual {v0, p4}, Lmobi/androidcloud/lib/net/k;->P(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lmobi/androidcloud/lib/im/j;->hv:Lmobi/androidcloud/lib/im/f;

    iget-object v0, v0, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    long-to-int v1, p7

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/net/k;->ao(I)V

    .line 47
    iget-object v0, p0, Lmobi/androidcloud/lib/im/j;->hv:Lmobi/androidcloud/lib/im/f;

    iget-object v0, v0, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    long-to-int v1, p5

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/net/k;->an(I)V

    .line 49
    sget-object v0, Lmobi/androidcloud/lib/im/c;->hi:Lmobi/androidcloud/lib/im/c;

    iget-object v1, p0, Lmobi/androidcloud/lib/im/j;->hv:Lmobi/androidcloud/lib/im/f;

    iget-object v1, v1, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/im/c;->b(Lmobi/androidcloud/lib/net/k;)V

    .line 52
    const-string v0, "Sent \'%s\' of type %d at %s uploaded at %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lmobi/androidcloud/lib/im/j;->hv:Lmobi/androidcloud/lib/im/f;

    iget-object v3, v3, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    invoke-virtual {v3}, Lmobi/androidcloud/lib/net/k;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lmobi/androidcloud/lib/im/j;->hv:Lmobi/androidcloud/lib/im/f;

    iget-object v3, v3, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    invoke-virtual {v3}, Lmobi/androidcloud/lib/net/k;->jr()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lmobi/androidcloud/lib/im/j;->hv:Lmobi/androidcloud/lib/im/f;

    iget-object v3, v3, Lmobi/androidcloud/lib/im/f;->hq:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    return-void
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lmobi/androidcloud/lib/im/j;->hv:Lmobi/androidcloud/lib/im/f;

    if-eqz v0, :cond_d

    .line 82
    iget-object v0, p0, Lmobi/androidcloud/lib/im/j;->hv:Lmobi/androidcloud/lib/im/f;

    iget-object v0, v0, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/net/k;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method getMsgId()I
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lmobi/androidcloud/lib/im/j;->hv:Lmobi/androidcloud/lib/im/f;

    if-eqz v0, :cond_d

    .line 75
    iget-object v0, p0, Lmobi/androidcloud/lib/im/j;->hv:Lmobi/androidcloud/lib/im/f;

    iget-object v0, v0, Lmobi/androidcloud/lib/im/f;->hm:Lmobi/androidcloud/lib/net/k;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/net/k;->getMsgId()I

    move-result v0

    .line 77
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lmobi/androidcloud/lib/im/j;->hv:Lmobi/androidcloud/lib/im/f;

    if-eqz v0, :cond_9

    .line 61
    iget-object v0, p0, Lmobi/androidcloud/lib/im/j;->hv:Lmobi/androidcloud/lib/im/f;

    iget-object v0, v0, Lmobi/androidcloud/lib/im/f;->hq:Ljava/lang/String;

    .line 63
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method iC()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lmobi/androidcloud/lib/im/j;->hv:Lmobi/androidcloud/lib/im/f;

    if-eqz v0, :cond_9

    .line 68
    iget-object v0, p0, Lmobi/androidcloud/lib/im/j;->hv:Lmobi/androidcloud/lib/im/f;

    iget-object v0, v0, Lmobi/androidcloud/lib/im/f;->hp:Ljava/lang/String;

    .line 70
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public iD()Lmobi/androidcloud/lib/im/f;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lmobi/androidcloud/lib/im/j;->hv:Lmobi/androidcloud/lib/im/f;

    return-object v0
.end method

.method public iE()V
    .registers 2

    .prologue
    .line 117
    iget v0, p0, Lmobi/androidcloud/lib/im/j;->hw:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmobi/androidcloud/lib/im/j;->hw:I

    .line 118
    return-void
.end method
