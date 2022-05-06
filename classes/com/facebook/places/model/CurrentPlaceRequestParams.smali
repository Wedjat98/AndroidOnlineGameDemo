.class public Lcom/facebook/places/model/CurrentPlaceRequestParams;
.super Ljava/lang/Object;
.source "CurrentPlaceRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;,
        Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;,
        Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;
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

.field private final limit:I

.field private final location:Landroid/location/Location;

.field private final minConfidenceLevel:Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

.field private final scanMode:Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;


# direct methods
.method private constructor <init>(Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;)V
    .registers 4
    .param p1, "b"    # Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams;->fields:Ljava/util/Set;

    .line 75
    # getter for: Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->location:Landroid/location/Location;
    invoke-static {p1}, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->access$0(Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams;->location:Landroid/location/Location;

    .line 76
    # getter for: Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->scanMode:Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;
    invoke-static {p1}, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->access$1(Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;)Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams;->scanMode:Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    .line 77
    # getter for: Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->minConfidenceLevel:Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;
    invoke-static {p1}, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->access$2(Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;)Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams;->minConfidenceLevel:Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    .line 78
    # getter for: Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->limit:I
    invoke-static {p1}, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->access$3(Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;)I

    move-result v0

    iput v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams;->limit:I

    .line 79
    iget-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams;->fields:Ljava/util/Set;

    # getter for: Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->fields:Ljava/util/Set;
    invoke-static {p1}, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->access$4(Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;Lcom/facebook/places/model/CurrentPlaceRequestParams;)V
    .registers 3

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/facebook/places/model/CurrentPlaceRequestParams;-><init>(Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;)V

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
    .line 121
    iget-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams;->fields:Ljava/util/Set;

    return-object v0
.end method

.method public getLimit()I
    .registers 2

    .prologue
    .line 113
    iget v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams;->limit:I

    return v0
.end method

.method public getLocation()Landroid/location/Location;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams;->location:Landroid/location/Location;

    return-object v0
.end method

.method public getMinConfidenceLevel()Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams;->minConfidenceLevel:Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    return-object v0
.end method

.method public getScanMode()Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams;->scanMode:Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    return-object v0
.end method
