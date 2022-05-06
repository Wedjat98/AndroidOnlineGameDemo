.class public final Lmobi/androidcloud/lib/util/b;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# instance fields
.field private kk:I


# direct methods
.method public constructor <init>(I)V
    .registers 5

    .prologue
    .line 23
    add-int/lit8 v0, p1, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 24
    iput p1, p0, Lmobi/androidcloud/lib/util/b;->kk:I

    .line 25
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4

    .prologue
    .line 32
    invoke-virtual {p0}, Lmobi/androidcloud/lib/util/b;->size()I

    move-result v0

    iget v1, p0, Lmobi/androidcloud/lib/util/b;->kk:I

    if-le v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
