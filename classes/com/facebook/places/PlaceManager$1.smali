.class Lcom/facebook/places/PlaceManager$1;
.super Ljava/lang/Object;
.source "PlaceManager.java"

# interfaces
.implements Lcom/facebook/places/internal/LocationPackageManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/places/PlaceManager;->newPlaceSearchRequest(Lcom/facebook/places/model/PlaceSearchRequestParams;Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callback:Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;

.field private final synthetic val$requestParams:Lcom/facebook/places/model/PlaceSearchRequestParams;


# direct methods
.method constructor <init>(Lcom/facebook/places/model/PlaceSearchRequestParams;Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/places/PlaceManager$1;->val$requestParams:Lcom/facebook/places/model/PlaceSearchRequestParams;

    iput-object p2, p0, Lcom/facebook/places/PlaceManager$1;->val$callback:Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationPackage(Lcom/facebook/places/internal/LocationPackage;)V
    .registers 5
    .param p1, "locationPackage"    # Lcom/facebook/places/internal/LocationPackage;

    .prologue
    .line 176
    iget-object v1, p1, Lcom/facebook/places/internal/LocationPackage;->locationError:Lcom/facebook/places/internal/ScannerException$Type;

    if-nez v1, :cond_12

    .line 178
    iget-object v1, p0, Lcom/facebook/places/PlaceManager$1;->val$requestParams:Lcom/facebook/places/model/PlaceSearchRequestParams;

    .line 179
    iget-object v2, p1, Lcom/facebook/places/internal/LocationPackage;->location:Landroid/location/Location;

    .line 177
    invoke-static {v1, v2}, Lcom/facebook/places/PlaceManager;->newPlaceSearchRequestForLocation(Lcom/facebook/places/model/PlaceSearchRequestParams;Landroid/location/Location;)Lcom/facebook/GraphRequest;

    move-result-object v0

    .line 180
    .local v0, "graphRequest":Lcom/facebook/GraphRequest;
    iget-object v1, p0, Lcom/facebook/places/PlaceManager$1;->val$callback:Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;

    invoke-interface {v1, v0}, Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;->onRequestReady(Lcom/facebook/GraphRequest;)V

    .line 184
    .end local v0    # "graphRequest":Lcom/facebook/GraphRequest;
    :goto_11
    return-void

    .line 182
    :cond_12
    iget-object v1, p0, Lcom/facebook/places/PlaceManager$1;->val$callback:Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;

    iget-object v2, p1, Lcom/facebook/places/internal/LocationPackage;->locationError:Lcom/facebook/places/internal/ScannerException$Type;

    # invokes: Lcom/facebook/places/PlaceManager;->getLocationError(Lcom/facebook/places/internal/ScannerException$Type;)Lcom/facebook/places/PlaceManager$LocationError;
    invoke-static {v2}, Lcom/facebook/places/PlaceManager;->access$0(Lcom/facebook/places/internal/ScannerException$Type;)Lcom/facebook/places/PlaceManager$LocationError;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;->onLocationError(Lcom/facebook/places/PlaceManager$LocationError;)V

    goto :goto_11
.end method
