.class public Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;
.super Ljava/lang/Object;
.source "PlaceSearchRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/places/model/PlaceSearchRequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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

.field private distance:I

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

.field private limit:I

.field private searchText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;->categories:Ljava/util/Set;

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;->fields:Ljava/util/Set;

    .line 93
    return-void
.end method

.method static synthetic access$0(Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;)I
    .registers 2

    .prologue
    .line 95
    iget v0, p0, Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;->distance:I

    return v0
.end method

.method static synthetic access$1(Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;)I
    .registers 2

    .prologue
    .line 96
    iget v0, p0, Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;->limit:I

    return v0
.end method

.method static synthetic access$2(Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;->searchText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;)Ljava/util/Set;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;->categories:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$4(Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;)Ljava/util/Set;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;->fields:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public addCategory(Ljava/lang/String;)Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;
    .registers 3
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;->categories:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    return-object p0
.end method

.method public addField(Ljava/lang/String;)Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;
    .registers 3
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;->fields:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    return-object p0
.end method

.method public build()Lcom/facebook/places/model/PlaceSearchRequestParams;
    .registers 3

    .prologue
    .line 168
    new-instance v0, Lcom/facebook/places/model/PlaceSearchRequestParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/places/model/PlaceSearchRequestParams;-><init>(Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;Lcom/facebook/places/model/PlaceSearchRequestParams;)V

    return-object v0
.end method

.method public setDistance(I)Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;
    .registers 2
    .param p1, "distance"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;->distance:I

    .line 112
    return-object p0
.end method

.method public setLimit(I)Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;
    .registers 2
    .param p1, "limit"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;->limit:I

    .line 123
    return-object p0
.end method

.method public setSearchText(Ljava/lang/String;)Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;
    .registers 2
    .param p1, "searchText"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;->searchText:Ljava/lang/String;

    .line 136
    return-object p0
.end method
