.class public Lcom/ydnetwork/net/toolbox/NoCache;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ydnetwork/net/Cache;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 1

    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/ydnetwork/net/Cache$Entry;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize()V
    .registers 1

    return-void
.end method

.method public invalidate(Ljava/lang/String;Z)V
    .registers 3

    return-void
.end method

.method public put(Ljava/lang/String;Lcom/ydnetwork/net/Cache$Entry;)V
    .registers 3

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
