.class public final Lcom/qiniu/android/dns/local/Hosts;
.super Ljava/lang/Object;
.source "Hosts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/dns/local/Hosts$Value;
    }
.end annotation


# instance fields
.field private final hosts:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qiniu/android/dns/local/Hosts$Value;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/dns/local/Hosts;->hosts:Ljava/util/Hashtable;

    .line 69
    return-void
.end method

.method private filter(Ljava/util/ArrayList;Lcom/qiniu/android/dns/NetworkInfo;)Ljava/util/ArrayList;
    .registers 9
    .param p2, "info"    # Lcom/qiniu/android/dns/NetworkInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qiniu/android/dns/local/Hosts$Value;",
            ">;",
            "Lcom/qiniu/android/dns/NetworkInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qiniu/android/dns/local/Hosts$Value;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "origin":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qiniu/android/dns/local/Hosts$Value;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v0, "normal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qiniu/android/dns/local/Hosts$Value;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v1, "special":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qiniu/android/dns/local/Hosts$Value;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qiniu/android/dns/local/Hosts$Value;

    .line 29
    .local v2, "v":Lcom/qiniu/android/dns/local/Hosts$Value;
    iget v4, v2, Lcom/qiniu/android/dns/local/Hosts$Value;->provider:I

    if-nez v4, :cond_21

    .line 30
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_21
    iget v4, p2, Lcom/qiniu/android/dns/NetworkInfo;->provider:I

    if-eqz v4, :cond_e

    iget v4, v2, Lcom/qiniu/android/dns/local/Hosts$Value;->provider:I

    iget v5, p2, Lcom/qiniu/android/dns/NetworkInfo;->provider:I

    if-ne v4, v5, :cond_e

    .line 34
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 37
    .end local v2    # "v":Lcom/qiniu/android/dns/local/Hosts$Value;
    :cond_2f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_36

    .line 40
    .end local v1    # "special":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qiniu/android/dns/local/Hosts$Value;>;"
    :goto_35
    return-object v1

    .restart local v1    # "special":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qiniu/android/dns/local/Hosts$Value;>;"
    :cond_36
    move-object v1, v0

    goto :goto_35
.end method


# virtual methods
.method public put(Ljava/lang/String;Lcom/qiniu/android/dns/local/Hosts$Value;)Lcom/qiniu/android/dns/local/Hosts;
    .registers 5
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "val"    # Lcom/qiniu/android/dns/local/Hosts$Value;

    .prologue
    .line 55
    iget-object v1, p0, Lcom/qiniu/android/dns/local/Hosts;->hosts:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 56
    .local v0, "vals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qiniu/android/dns/local/Hosts$Value;>;"
    if-nez v0, :cond_f

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "vals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qiniu/android/dns/local/Hosts$Value;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .restart local v0    # "vals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qiniu/android/dns/local/Hosts$Value;>;"
    :cond_f
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v1, p0, Lcom/qiniu/android/dns/local/Hosts;->hosts:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/qiniu/android/dns/local/Hosts;
    .registers 4
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 65
    new-instance v0, Lcom/qiniu/android/dns/local/Hosts$Value;

    invoke-direct {v0, p2}, Lcom/qiniu/android/dns/local/Hosts$Value;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/qiniu/android/dns/local/Hosts;->put(Ljava/lang/String;Lcom/qiniu/android/dns/local/Hosts$Value;)Lcom/qiniu/android/dns/local/Hosts;

    .line 66
    return-object p0
.end method

.method public query(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Ljava/lang/String;
    .registers 6
    .param p1, "domain"    # Lcom/qiniu/android/dns/Domain;
    .param p2, "info"    # Lcom/qiniu/android/dns/NetworkInfo;

    .prologue
    .line 17
    iget-object v1, p0, Lcom/qiniu/android/dns/local/Hosts;->hosts:Ljava/util/Hashtable;

    iget-object v2, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 18
    .local v0, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qiniu/android/dns/local/Hosts$Value;>;"
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 19
    :cond_12
    const/4 v1, 0x0

    .line 22
    :goto_13
    return-object v1

    .line 21
    :cond_14
    invoke-direct {p0, v0, p2}, Lcom/qiniu/android/dns/local/Hosts;->filter(Ljava/util/ArrayList;Lcom/qiniu/android/dns/NetworkInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 22
    invoke-virtual {p0, v0}, Lcom/qiniu/android/dns/local/Hosts;->toIps(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_13
.end method

.method public toIps(Ljava/util/ArrayList;)[Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qiniu/android/dns/local/Hosts$Value;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "vals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qiniu/android/dns/local/Hosts$Value;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 46
    .local v2, "size":I
    new-array v1, v2, [Ljava/lang/String;

    .line 47
    .local v1, "r":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v2, :cond_16

    .line 48
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qiniu/android/dns/local/Hosts$Value;

    .line 49
    .local v3, "v":Lcom/qiniu/android/dns/local/Hosts$Value;
    iget-object v4, v3, Lcom/qiniu/android/dns/local/Hosts$Value;->ip:Ljava/lang/String;

    aput-object v4, v1, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 51
    .end local v3    # "v":Lcom/qiniu/android/dns/local/Hosts$Value;
    :cond_16
    return-object v1
.end method
