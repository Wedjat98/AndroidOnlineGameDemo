.class public final Lcom/google/protobuf/y;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3

    .prologue
    .line 59
    invoke-static {p1}, Lcom/google/protobuf/y;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private static b(Ljava/util/List;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Message missing required fields: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x1

    .line 89
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    if-eqz v1, :cond_20

    .line 91
    const/4 v1, 0x0

    .line 95
    :goto_1c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 93
    :cond_20
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 97
    :cond_26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public hg()Lcom/google/protobuf/s;
    .registers 3

    .prologue
    .line 81
    new-instance v0, Lcom/google/protobuf/s;

    invoke-virtual {p0}, Lcom/google/protobuf/y;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/s;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
