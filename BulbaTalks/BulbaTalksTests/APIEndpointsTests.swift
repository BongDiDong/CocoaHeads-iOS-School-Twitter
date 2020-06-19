@testable import BulbaTalks
import XCTest

class APIEndpointsTests: XCTestCase {
    func testGetHomeTimelineMethodReturnsExpectedHTTPEndpoint() {
        // Given
        let expectedMethodType = HTTPMethodType.get
        let expectedPath = "1.1/statuses/home_timeline.json"
        let expectedHeaderParameters = ["firstHeaderName": "firstHeaderValue",
                                        "secondHeaderName": "secondHeaderValue"]
        let expectedQueryParameters = ["firstQueryKey": "firstQueryValue",
                                       "secondQueryKey": "secondQueryValue"]

        // When
        let endpoint = APIEndpoints.getHomeTimeline(with: expectedHeaderParameters,
                                                    queryParameters: expectedQueryParameters)

        // Then
        XCTAssertEqual(endpoint.method, expectedMethodType)
        XCTAssertEqual(endpoint.path, expectedPath)
        XCTAssertEqual(endpoint.headerParameters, expectedHeaderParameters)
        XCTAssertEqual(endpoint.queryParameters, expectedQueryParameters)
        XCTAssert(endpoint.bodyParameters.isEmpty)
    }

    func testGetAuthenticatedUserMethodReturnsExpectedHTTPEndpoint() {
        // Given
        let expectedMethodType = HTTPMethodType.get
        let expectedPath = "1.1/account/verify_credentials.json"
        let expectedHeaderParameters = ["firstHeaderName": "firstHeaderValue",
                                        "secondHeaderName": "secondHeaderValue"]

        // When
        let endpoint = APIEndpoints.getAuthenticatedUser(with: expectedHeaderParameters)

        // Then
        XCTAssertEqual(endpoint.method, expectedMethodType)
        XCTAssertEqual(endpoint.path, expectedPath)
        XCTAssertEqual(endpoint.headerParameters, expectedHeaderParameters)
        XCTAssert(endpoint.queryParameters.isEmpty)
        XCTAssert(endpoint.bodyParameters.isEmpty)
    }
}
