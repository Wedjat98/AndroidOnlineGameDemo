.class public Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;
.super Ljava/lang/Object;
.source "PlaceInfoRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/places/model/PlaceInfoRequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final fields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private placeId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;->fields:Ljava/util/Set;

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;->placeId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;)Ljava/util/Set;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;->fields:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public addField(Ljava/lang/String;)Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;
    .registers 3
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;->fields:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    return-object p0
.end method

.method public addFields([Ljava/lang/String;)Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;
    .registers 6
    .param p1, "fields"    # [Ljava/lang/String;

    .prologue
    .line 94
    array-length v2, p1

    const/4 v1, 0x0

    :goto_2
    if-lt v1, v2, :cond_5

    .line 97
    return-object p0

    .line 94
    :cond_5
    aget-object v0, p1, v1

    .line 95
    .local v0, "field":Ljava/lang/String;
    iget-object v3, p0, Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;->fields:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public build()Lcom/facebook/places/model/PlaceInfoRequestParams;
    .registers 3

    .prologue
    .line 105
    new-instance v0, Lcom/facebook/places/model/PlaceInfoRequestParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/places/model/PlaceInfoRequestParams;-><init>(Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;Lcom/facebook/places/model/PlaceInfoRequestParams;)V

    return-object v0
.end method

.method public setPlaceId(Ljava/lang/String;)Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;
    .registers 2
    .param p1, "placeId"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;->placeId:Ljava/lang/String;

    .line 71
    return-object p0
.end method
