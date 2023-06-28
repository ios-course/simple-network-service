import Foundation

extension NetworkError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .badRequest:
            return "The server cannot process the request due to an error in the request."
        case .authenticationError:
            return """
            The server cannot complete the request.
            It lacks valid authentication credentials for the requested resource.
            """
        case .clientError:
            return "The server cannot process the request due to a client error."
        case .serverError:
            return "The server cannot process the request due to a issue with the server."
        case .requestTimeout:
            return "The server timed out waiting for the request."
        case .unknownError:
            return "Unknown error."
        }
    }
}