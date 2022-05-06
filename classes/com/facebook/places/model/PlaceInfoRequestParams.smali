.class public final Lcom/facebook/places/model/PlaceInfoRequestParams;
.super Ljava/lang/Object;
.source "PlaceInfoRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;
    }
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

.field private final placeId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;)V
    .registers 4
    .param p1, "b"    # Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/places/model/PlaceInfoRequestParams;->fields:Ljava/util/Set;

    .line 36
    # getter for: Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;->placeId:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;->access$0(Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/places/model/PlaceInfoRequestParams;->placeId:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/facebook/places/model/PlaceInfoRequestParams;->fields:Ljava/util/Set;

    # getter for: Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;->fields:Ljava/util/Set;
    invoke-static {p1}, Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;->access$1(Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;Lcom/facebook/places/model/PlaceInfoRequestParams;)V
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/facebook/places/model/PlaceInfoRequestParams;-><init>(Lcom/facebook/places/model/PlaceInfoRequestParams$Builder;)V

    return-void
.end method


# virtual methods
.method public getFields()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/places/model/PlaceInfoRequestParams;->fields:Ljava/util/Set;

    return-object v0
.end method

.method public getPlaceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/places/model/PlaceInfoRequestParams;->placeId:Ljava/lang/String;

    return-object v0
.end method
