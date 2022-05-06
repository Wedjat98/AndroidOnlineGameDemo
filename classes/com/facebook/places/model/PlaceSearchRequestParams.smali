.class public final Lcom/facebook/places/model/PlaceSearchRequestParams;
.super Ljava/lang/Object;
.source "PlaceSearchRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;
    }
.end annotation


# instance fields
.field private final categories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final distance:I

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

.field private final limit:I

.field private final searchText:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;)V
    .registers 4
    .param p1, "b"    # Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/places/model/PlaceSearchRequestParams;->categories:Ljava/util/Set;

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/places/model/PlaceSearchRequestParams;->fields:Ljava/util/Set;

    .line 39
    # getter for: Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;->distance:I
    invoke-static {p1}, Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;->access$0(Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;)I

    move-result v0

    iput v0, p0, Lcom/facebook/places/model/PlaceSearchRequestParams;->distance:I

    .line 40
    # getter for: Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;->limit:I
    invoke-static {p1}, Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;->access$1(Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;)I

    move-result v0

    iput v0, p0, Lcom/facebook/places/model/PlaceSearchRequestParams;->limit:I

    .line 41
    # getter for: Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;->searchText:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;->access$2(Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/places/model/PlaceSearchRequestParams;->searchText:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/facebook/places/model/PlaceSearchRequestParams;->categories:Ljava/util/Set;

    # getter for: Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;->categories:Ljava/util/Set;
    invoke-static {p1}, Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;->access$3(Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 43
    iget-object v0, p0, Lcom/facebook/places/model/PlaceSearchRequestParams;->fields:Ljava/util/Set;

    # getter for: Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;->fields:Ljava/util/Set;
    invoke-static {p1}, Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;->access$4(Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;Lcom/facebook/places/model/PlaceSearchRequestParams;)V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/places/model/PlaceSearchRequestParams;-><init>(Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;)V

    return-void
.end method


# virtual methods
.method public getCategories()Ljava/util/Set;
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
    .line 79
    iget-object v0, p0, Lcom/facebook/places/model/PlaceSearchRequestParams;->categories:Ljava/util/Set;

    return-object v0
.end method

.method public getDistance()I
    .registers 2

    .prologue
    .line 53
    iget v0, p0, Lcom/facebook/places/model/PlaceSearchRequestParams;->distance:I

    return v0
.end method

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
    .line 87
    iget-object v0, p0, Lcom/facebook/places/model/PlaceSearchRequestParams;->fields:Ljava/util/Set;

    return-object v0
.end method

.method public getLimit()I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Lcom/facebook/places/model/PlaceSearchRequestParams;->limit:I

    return v0
.end method

.method public getSearchText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/places/model/PlaceSearchRequestParams;->searchText:Ljava/lang/String;

    return-object v0
.end method
