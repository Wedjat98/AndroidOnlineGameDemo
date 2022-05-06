.class public Lcom/google/protobuf/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final eh:Lcom/google/protobuf/o;


# instance fields
.field private final ee:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 143
    new-instance v0, Lcom/google/protobuf/o;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/o;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/o;->eh:Lcom/google/protobuf/o;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/o;->ee:Ljava/util/Map;

    .line 125
    return-void
.end method

.method constructor <init>(Lcom/google/protobuf/o;)V
    .registers 3

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    sget-object v0, Lcom/google/protobuf/o;->eh:Lcom/google/protobuf/o;

    if-ne p1, v0, :cond_e

    .line 129
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/o;->ee:Ljava/util/Map;

    .line 134
    :goto_d
    return-void

    .line 131
    :cond_e
    iget-object v0, p1, Lcom/google/protobuf/o;->ee:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/o;->ee:Ljava/util/Map;

    goto :goto_d
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/o;->ee:Ljava/util/Map;

    .line 142
    return-void
.end method

.method public static gO()Lcom/google/protobuf/o;
    .registers 1

    .prologue
    .line 81
    sget-object v0, Lcom/google/protobuf/o;->eh:Lcom/google/protobuf/o;

    return-object v0
.end method
