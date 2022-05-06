.class public Lcom/ydnetwork/net/Response;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ydnetwork/net/Response$ErrorListener;,
        Lcom/ydnetwork/net/Response$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final cacheEntry:Lcom/ydnetwork/net/Cache$Entry;

.field public final error:Lcom/ydnetwork/net/VolleyError;

.field public intermediate:Z

.field public final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/ydnetwork/net/VolleyError;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ydnetwork/net/Response;->intermediate:Z

    iput-object v1, p0, Lcom/ydnetwork/net/Response;->result:Ljava/lang/Object;

    iput-object v1, p0, Lcom/ydnetwork/net/Response;->cacheEntry:Lcom/ydnetwork/net/Cache$Entry;

    iput-object p1, p0, Lcom/ydnetwork/net/Response;->error:Lcom/ydnetwork/net/VolleyError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/ydnetwork/net/Cache$Entry;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/ydnetwork/net/Cache$Entry;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ydnetwork/net/Response;->intermediate:Z

    iput-object p1, p0, Lcom/ydnetwork/net/Response;->result:Ljava/lang/Object;

    iput-object p2, p0, Lcom/ydnetwork/net/Response;->cacheEntry:Lcom/ydnetwork/net/Cache$Entry;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ydnetwork/net/Response;->error:Lcom/ydnetwork/net/VolleyError;

    return-void
.end method

.method public static error(Lcom/ydnetwork/net/VolleyError;)Lcom/ydnetwork/net/Response;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ydnetwork/net/VolleyError;",
            ")",
            "Lcom/ydnetwork/net/Response",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/ydnetwork/net/Response;

    invoke-direct {v0, p0}, Lcom/ydnetwork/net/Response;-><init>(Lcom/ydnetwork/net/VolleyError;)V

    return-object v0
.end method

.method public static success(Ljava/lang/Object;Lcom/ydnetwork/net/Cache$Entry;)Lcom/ydnetwork/net/Response;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/ydnetwork/net/Cache$Entry;",
            ")",
            "Lcom/ydnetwork/net/Response",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/ydnetwork/net/Response;

    invoke-direct {v0, p0, p1}, Lcom/ydnetwork/net/Response;-><init>(Ljava/lang/Object;Lcom/ydnetwork/net/Cache$Entry;)V

    return-object v0
.end method


# virtual methods
.method public isSuccess()Z
    .registers 2

    iget-object v0, p0, Lcom/ydnetwork/net/Response;->error:Lcom/ydnetwork/net/VolleyError;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
