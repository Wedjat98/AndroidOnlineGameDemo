.class public final Lcom/google/protobuf/n;
.super Lcom/google/protobuf/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/n$a;
    }
.end annotation


# static fields
.field private static final ef:Lcom/google/protobuf/n;


# instance fields
.field private final ee:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 216
    new-instance v0, Lcom/google/protobuf/n;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/n;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/n;->ef:Lcom/google/protobuf/n;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/google/protobuf/o;-><init>()V

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/n;->ee:Ljava/util/Map;

    .line 198
    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .prologue
    .line 211
    invoke-static {}, Lcom/google/protobuf/o;->gO()Lcom/google/protobuf/o;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/o;-><init>(Lcom/google/protobuf/o;)V

    .line 212
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 213
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/n;->ee:Ljava/util/Map;

    .line 215
    return-void
.end method

.method public static gN()Lcom/google/protobuf/n;
    .registers 1

    .prologue
    .line 101
    sget-object v0, Lcom/google/protobuf/n;->ef:Lcom/google/protobuf/n;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/protobuf/l$a;I)Lmobi/androidcloud/lib/aws/b;
    .registers 5

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/protobuf/n;->ee:Ljava/util/Map;

    new-instance v1, Lcom/google/protobuf/n$a;

    invoke-direct {v1, p1, p2}, Lcom/google/protobuf/n$a;-><init>(Lcom/google/protobuf/l$a;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/androidcloud/lib/aws/b;

    return-object v0
.end method
